import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_event.freezed.dart';
part 'audit_event.g.dart';

@freezed
abstract class AuditEvent with _$AuditEvent {
  const factory AuditEvent({
    String? id,
    @JsonKey(name: 'event_type') String? eventType,
    @JsonKey(name: 'event_action') String? eventAction,
    @JsonKey(name: 'event_description') String? eventDescription,
    @JsonKey(name: 'event_date') String? eventDate,
    @JsonKey(name: 'admin_email') String? adminEmail,
    @JsonKey(name: 'admin_name') String? adminName,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'device_serial_number') String? deviceSerialNumber,
    @JsonKey(name: 'blueprint_name') String? blueprintName,
    @JsonKey(name: 'user_email') String? userEmail,
  }) = _AuditEvent;

  factory AuditEvent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventFromJson(json);
}
