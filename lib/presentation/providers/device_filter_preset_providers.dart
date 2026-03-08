import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/storage_keys.dart';
import '../../core/di/providers.dart';
import '../../domain/entities/device_filter_preset.dart';

final deviceFilterPresetsProvider =
    AsyncNotifierProvider<
      DeviceFilterPresetsNotifier,
      List<DeviceFilterPreset>
    >(DeviceFilterPresetsNotifier.new);

class DeviceFilterPresetsNotifier
    extends AsyncNotifier<List<DeviceFilterPreset>> {
  @override
  Future<List<DeviceFilterPreset>> build() async {
    final storage = ref.read(secureStorageProvider);
    final json = await storage.read(key: StorageKeys.deviceFilterPresets);
    if (json == null || json.isEmpty) return [];

    final list = (jsonDecode(json) as List<dynamic>)
        .cast<Map<String, dynamic>>();
    return list.map(DeviceFilterPreset.fromJson).toList();
  }

  Future<void> add(DeviceFilterPreset preset) async {
    final current = state.valueOrNull ?? [];
    final updated = [...current, preset];
    await _persist(updated);
    state = AsyncData(updated);
  }

  Future<void> remove(String id) async {
    final current = state.valueOrNull ?? [];
    final updated = current.where((p) => p.id != id).toList();
    await _persist(updated);
    state = AsyncData(updated);
  }

  Future<void> _persist(List<DeviceFilterPreset> presets) async {
    final storage = ref.read(secureStorageProvider);
    final json = jsonEncode(presets.map((p) => p.toJson()).toList());
    await storage.write(key: StorageKeys.deviceFilterPresets, value: json);
  }
}
