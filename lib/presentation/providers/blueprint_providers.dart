import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../core/di/providers.dart';
import '../../domain/entities/blueprint.dart';
import '../../domain/entities/blueprint_template.dart';
import '../../domain/entities/library_item.dart';
import '../../domain/entities/library_item_status.dart';
import 'device_providers.dart';

/// Sort order: true = A-Z, false = Z-A.
final blueprintSortAscProvider = StateProvider<bool>((ref) => true);

/// Search query for blueprint list.
final blueprintSearchQueryProvider = StateProvider<String>((ref) => '');

/// Selected blueprint ID for master-detail layout on wide screens.
final selectedBlueprintIdProvider = StateProvider<String?>((ref) => null);

/// Provider for the full blueprint list.
final blueprintsProvider = FutureProvider<List<Blueprint>>((ref) async {
  final repo = await ref.watch(blueprintRepositoryProvider.future);
  return repo.getBlueprints();
});

/// Device count per blueprint, derived from the loaded device list.
final blueprintDeviceCountProvider = Provider.family<int, String>((
  ref,
  blueprintId,
) {
  final devicesAsync = ref.watch(devicesProvider);
  return devicesAsync.whenOrNull(
        data: (devices) =>
            devices.where((d) => d.blueprintId == blueprintId).length,
      ) ??
      0;
});

/// Library items for a specific blueprint.
final blueprintLibraryItemsProvider =
    FutureProvider.family<List<LibraryItem>, String>((ref, blueprintId) async {
      final api = await ref.watch(blueprintApiProvider.future);
      return api.getBlueprintLibraryItems(blueprintId);
    });

/// Sorted and filtered blueprints.
final sortedBlueprintsProvider = Provider<AsyncValue<List<Blueprint>>>((ref) {
  final bpAsync = ref.watch(blueprintsProvider);
  final sortAsc = ref.watch(blueprintSortAscProvider);
  final query = ref.watch(blueprintSearchQueryProvider).toLowerCase();

  return bpAsync.whenData((blueprints) {
    final filtered = blueprints.where((bp) {
      if (query.isEmpty) return true;
      final name = bp.name.toLowerCase();
      final desc = bp.description?.toLowerCase() ?? '';
      return name.contains(query) || desc.contains(query);
    });

    final sorted = filtered.toList();
    sorted.sort((a, b) {
      final nameA = a.name.toLowerCase();
      final nameB = b.name.toLowerCase();
      return sortAsc ? nameA.compareTo(nameB) : nameB.compareTo(nameA);
    });
    return sorted;
  });
});

/// Blueprint templates.
final blueprintTemplatesProvider = FutureProvider<List<BlueprintTemplate>>((
  ref,
) async {
  final repo = await ref.watch(blueprintRepositoryProvider.future);
  return repo.getBlueprintTemplates();
});

/// A library item with its associated blueprint names (deduplicated).
class AggregatedLibraryItem {
  AggregatedLibraryItem({
    required this.item,
    required this.blueprintNames,
    this.rawData,
  });
  final LibraryItem item;
  final List<String> blueprintNames;

  /// Raw JSON from the list-library-items endpoint.
  final Map<String, dynamic>? rawData;
}

/// Search query for library items list.
final libraryItemSearchQueryProvider = StateProvider<String>((ref) => '');

/// All library items across all blueprints, deduplicated with blueprint associations.
final aggregatedLibraryItemsProvider =
    FutureProvider<List<AggregatedLibraryItem>>((ref) async {
      final blueprints = await ref.watch(blueprintsProvider.future);
      final api = await ref.watch(blueprintApiProvider.future);

      final results = await Future.wait(
        blueprints.map((bp) async {
          try {
            final rawItems = await api.getBlueprintLibraryItemsRaw(bp.id);
            return (blueprint: bp, rawItems: rawItems);
          } catch (_) {
            return (blueprint: bp, rawItems: <Map<String, dynamic>>[]);
          }
        }),
      );

      // Deduplicate by item_id (stable library-item UUID) so the same item
      // across blueprints merges, but genuinely different items stay separate.
      // Fall back to name:type composite when item_id is not available.
      final map = <String, AggregatedLibraryItem>{};
      for (final result in results) {
        for (final raw in result.rawItems) {
          final item = LibraryItem.fromJson(raw);
          final name = (item.name ?? '').toLowerCase();
          if (name.isEmpty && item.id == null && item.itemId == null) continue;
          // Prefer item_id (stable across blueprints); fall back to raw id
          // (unique per assignment) which keeps genuinely different items apart.
          final key = item.itemId ?? item.id ?? '$name:${item.type ?? ''}';
          if (map.containsKey(key)) {
            if (!map[key]!.blueprintNames.contains(result.blueprint.name)) {
              map[key]!.blueprintNames.add(result.blueprint.name);
            }
          } else {
            map[key] = AggregatedLibraryItem(
              item: item,
              blueprintNames: [result.blueprint.name],
              rawData: raw,
            );
          }
        }
      }

      final list = map.values.toList();
      list.sort(
        (a, b) => (a.item.name ?? '').toLowerCase().compareTo(
          (b.item.name ?? '').toLowerCase(),
        ),
      );
      return list;
    });

/// All library item details across all categories (scripts, apps, profiles).
/// Merges data from category-specific endpoints with raw data from
/// blueprint list-library-items for types without dedicated endpoints.
/// Uses /library/library-items for type resolution.
final allLibraryItemDetailsProvider =
    FutureProvider<Map<String, Map<String, dynamic>>>((ref) async {
      final api = await ref.watch(blueprintApiProvider.future);
      final result = await api.getAllLibraryItemDetails();

      // Merge aggregated items (from blueprint list-library-items) for
      // items not already covered by dedicated endpoints.
      final aggregated = await ref.watch(aggregatedLibraryItemsProvider.future);
      for (final agg in aggregated) {
        final id = agg.item.id;
        if (id == null || result.containsKey(id)) continue;
        if (agg.rawData != null) {
          // Infer type from name patterns for items with no dedicated endpoint.
          final cat = _inferCategory(agg.item.name);
          result[id] = {...agg.rawData!, '_category': cat};
        }
      }

      return result;
    });

/// Infer library item category from name when API provides no type.
String _inferCategory(String? name) {
  if (name == null) return '_unknown';
  final n = name.toLowerCase();
  if (n.startsWith('macos ') ||
      n.contains('tahoe') ||
      n.contains('sequoia') ||
      n.contains('sonoma') ||
      n.contains('ventura')) {
    return 'macos-release';
  }
  if (n.startsWith('ios ') || n.startsWith('ipados ')) return 'os-release';
  if (n.contains('cis level') || n.contains('cis benchmark')) return 'profile';
  if (n == 'edr in detect mode' || n.contains('threat')) {
    return 'threat-security-policy';
  }
  if (n.contains('kandji self service') || n.contains('liftoff')) {
    return 'kandji-setup';
  }
  return '_unknown';
}

/// Full detail for a single library item (includes body/profile fields).
/// Parameter format: "category:itemId" (e.g. "custom-script:abc123").
final libraryItemFullDetailProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, param) async {
      final parts = param.split(':');
      if (parts.length < 2) return {};
      final category = parts[0];
      final itemId = parts.sublist(1).join(':');
      final api = await ref.watch(tenantApiProvider.future);
      return switch (category) {
        'custom-script' => api.getCustomScript(itemId),
        'custom-profile' => api.getCustomProfile(itemId),
        'custom-app' => api.getCustomApp(itemId),
        'in-house-app' => api.getIpaApp(itemId),
        _ => <String, dynamic>{},
      };
    });

/// Library item activity log.
final libraryItemActivityProvider =
    FutureProvider.family<List<LibraryItemActivity>, String>((
      ref,
      itemId,
    ) async {
      final repo = await ref.watch(blueprintRepositoryProvider.future);
      return repo.getLibraryItemActivity(itemId);
    });

/// Library item deployment status.
final libraryItemStatusProvider =
    FutureProvider.family<List<LibraryItemStatus>, String>((ref, itemId) async {
      final repo = await ref.watch(blueprintRepositoryProvider.future);
      return repo.getLibraryItemStatus(itemId);
    });
