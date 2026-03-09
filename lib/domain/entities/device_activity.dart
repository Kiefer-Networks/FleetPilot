import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_activity.freezed.dart';
part 'device_activity.g.dart';

/// An activity log entry for a managed device.
@freezed
abstract class DeviceActivity with _$DeviceActivity {
  const factory DeviceActivity({
    dynamic id,
    @JsonKey(name: 'action_type') String? actionType,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(fromJson: _detailsMapFromJson) Map<String, dynamic>? details,
    dynamic user,
  }) = _DeviceActivity;

  factory DeviceActivity.fromJson(Map<String, dynamic> json) =>
      _$DeviceActivityFromJson(json);

  /// Human-readable summary extracted from [details].
  static String? summarize(Map<String, dynamic>? details) {
    if (details == null) return null;

    // Check for text-only details
    if (details.containsKey('_text')) return details['_text'] as String?;

    // Extract MDM command/request type
    final requestType = details['request_type']?.toString();
    final commandType = details['command_type']?.toString();
    final primary = requestType ?? commandType;
    if (primary != null) {
      return primary.replaceAllMapped(
        RegExp(r'([a-z])([A-Z])'),
        (m) => '${m[1]} ${m[2]}',
      );
    }

    // Fallback: simple scalar values
    const skip = {
      'uuid',
      'id',
      'status',
      'attributes',
      'metadata',
      'device_id',
      'device__name',
    };
    final parts = <String>[];
    for (final e in details.entries) {
      if (skip.contains(e.key)) continue;
      if (e.value == null || e.value.toString().isEmpty) continue;
      if (e.value is Map || e.value is List) continue;
      parts.add(e.value.toString());
    }
    return parts.isEmpty ? null : parts.join(' · ');
  }
}

Map<String, dynamic>? _detailsMapFromJson(dynamic value) {
  if (value == null) return null;
  if (value is Map<String, dynamic>) return value;
  if (value is Map) return Map<String, dynamic>.from(value);
  if (value is String) return {'_text': value};
  return {'_text': value.toString()};
}
