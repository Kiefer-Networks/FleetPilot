import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../core/di/providers.dart';
import '../../data/datasources/remote/prism_api.dart';

/// Currently selected Prism category.
final prismSelectedCategoryProvider = StateProvider<String>(
  (ref) => 'device_information',
);

/// Search query for filtering Prism results.
final prismSearchQueryProvider = StateProvider<String>((ref) => '');

/// Blueprint filter for Prism queries.
final prismBlueprintFilterProvider = StateProvider<String?>((ref) => null);

/// Device family filter for Prism queries.
final prismDeviceFamilyFilterProvider = StateProvider<String?>((ref) => null);

/// Prism data for the selected category.
final prismDataProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final api = await ref.watch(prismApiProvider.future);
  final category = ref.watch(prismSelectedCategoryProvider);
  final blueprintIds = ref.watch(prismBlueprintFilterProvider);
  final deviceFamilies = ref.watch(prismDeviceFamilyFilterProvider);
  return api.getCategory(
    category,
    blueprintIds: blueprintIds,
    deviceFamilies: deviceFamilies,
  );
});

/// Record count for selected category.
final prismCountProvider = FutureProvider<int>((ref) async {
  final api = await ref.watch(prismApiProvider.future);
  final category = ref.watch(prismSelectedCategoryProvider);
  final result = await api.getCount(category);
  return (result['count'] as num?)?.toInt() ?? 0;
});

/// All category counts for the overview.
final prismAllCountsProvider = FutureProvider<Map<String, int>>((ref) async {
  final api = await ref.watch(prismApiProvider.future);
  final counts = <String, int>{};
  // Fetch counts in parallel.
  await Future.wait(
    PrismApi.categories.map((cat) async {
      try {
        final r = await api.getCount(cat);
        counts[cat] = (r['count'] as num?)?.toInt() ?? 0;
      } catch (_) {
        counts[cat] = 0;
      }
    }),
  );
  return counts;
});

/// Export request result.
final prismExportProvider = FutureProvider.family<Map<String, dynamic>, String>(
  (ref, category) async {
    final api = await ref.watch(prismApiProvider.future);
    return api.requestExport(category);
  },
);
