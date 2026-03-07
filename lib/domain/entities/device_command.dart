import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_command.freezed.dart';
part 'device_command.g.dart';

/// An MDM command issued to a device.
@freezed
abstract class DeviceCommand with _$DeviceCommand {
  const factory DeviceCommand({
    String? uuid,
    @JsonKey(name: 'command_type') String? commandType,
    @JsonKey(name: 'request_type') String? requestType,
    @JsonKey(fromJson: _statusFromJson) String? status,
    @JsonKey(name: 'date_requested') String? dateRequested,
    @JsonKey(name: 'date_completed') String? dateCompleted,
    @JsonKey(name: 'last_pushed') String? lastPushed,
    int? attempts,
    int? priority,
  }) = _DeviceCommand;

  factory DeviceCommand.fromJson(Map<String, dynamic> json) =>
      _$DeviceCommandFromJson(json);

  /// Human-readable command status label.
  static String statusLabel(String? status) => switch (status) {
    '1' => 'Pending',
    '2' => 'Running',
    '3' => 'Completed',
    '4' => 'Failed',
    '5' => 'Not Now',
    _ => status ?? 'Unknown',
  };
}

String? _statusFromJson(dynamic value) {
  if (value == null) return null;
  return value.toString();
}
