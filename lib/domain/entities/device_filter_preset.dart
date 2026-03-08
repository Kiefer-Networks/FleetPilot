import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_filter_preset.freezed.dart';
part 'device_filter_preset.g.dart';

@freezed
abstract class DeviceFilterPreset with _$DeviceFilterPreset {
  const factory DeviceFilterPreset({
    required String id,
    required String name,
    @Default('') String searchQuery,
    String? platform,
    bool? supervised,
    @Default(false) bool lostMode,
    @Default(true) bool sortAsc,
  }) = _DeviceFilterPreset;

  factory DeviceFilterPreset.fromJson(Map<String, dynamic> json) =>
      _$DeviceFilterPresetFromJson(json);
}
