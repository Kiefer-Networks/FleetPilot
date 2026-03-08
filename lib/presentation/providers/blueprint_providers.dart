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
  AggregatedLibraryItem({required this.item, required this.blueprintNames});
  final LibraryItem item;
  final List<String> blueprintNames;
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
            final items = await api.getBlueprintLibraryItems(bp.id);
            return (blueprint: bp, items: items);
          } catch (_) {
            return (blueprint: bp, items: <LibraryItem>[]);
          }
        }),
      );

      // Deduplicate by name (case-insensitive) to merge same item across
      // blueprints/platforms. Fall back to id if name is missing.
      final map = <String, AggregatedLibraryItem>{};
      for (final result in results) {
        for (final item in result.items) {
          final key = (item.name ?? item.id ?? '').toLowerCase();
          if (key.isEmpty) continue;
          if (map.containsKey(key)) {
            if (!map[key]!.blueprintNames.contains(result.blueprint.name)) {
              map[key]!.blueprintNames.add(result.blueprint.name);
            }
          } else {
            map[key] = AggregatedLibraryItem(
              item: item,
              blueprintNames: [result.blueprint.name],
            );
          }
        }
      }

      final list = map.values.toList();
      list.sort(
        (a, b) => (a.item.name ?? '')
            .toLowerCase()
            .compareTo((b.item.name ?? '').toLowerCase()),
      );
      return list;
    });

/// All library item details across all categories (scripts, apps, profiles).
/// Returns a map of item ID → raw data with '_category' key.
final allLibraryItemDetailsProvider =
    FutureProvider<Map<String, Map<String, dynamic>>>((ref) async {
      final api = await ref.watch(blueprintApiProvider.future);
      return api.getAllLibraryItemDetails();
    });

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
