import 'package:flutter_riverpod/flutter_riverpod.dart';

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
