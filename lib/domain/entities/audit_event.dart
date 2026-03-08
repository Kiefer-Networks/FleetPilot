import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_event.freezed.dart';
part 'audit_event.g.dart';

/// Converts a value that might be int, bool, or other non-String to String?.
String? _toNullableString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  return value.toString();
}

/// Extracts a human-readable description from the `new_state` field,
/// which may be a Map or a JSON-encoded string.
String? _descriptionFromNewState(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is Map<String, dynamic>) {
    // Try common description-like keys
    for (final key in [
      'description',
      'name',
      'display_name',
      'title',
      'message',
    ]) {
      if (value.containsKey(key) && value[key] != null) {
        return value[key].toString();
      }
    }
    // Fallback: return the whole map as a string
    return value.entries
        .where((e) => e.value != null)
        .take(3)
        .map((e) => '${e.key}: ${e.value}')
        .join(', ');
  }
  return value.toString();
}

@freezed
abstract class AuditEvent with _$AuditEvent {
  const factory AuditEvent({
    @JsonKey(fromJson: _toNullableString) String? id,

    /// The action performed, e.g. "create", "update", "delete", "detect".
    @JsonKey(fromJson: _toNullableString) String? action,

    /// ISO-8601 timestamp when the event occurred.
    @JsonKey(name: 'occurred_at') String? occurredAt,

    /// ID of the actor (admin user or system component).
    @JsonKey(name: 'actor_id', fromJson: _toNullableString) String? actorId,

    /// Type of actor, e.g. "admin", "kandji".
    @JsonKey(name: 'actor_type', fromJson: _toNullableString) String? actorType,

    /// ID of the target object.
    @JsonKey(name: 'target_id', fromJson: _toNullableString) String? targetId,

    /// Type of target, e.g. "device", "blueprint", "user".
    @JsonKey(name: 'target_type', fromJson: _toNullableString)
    String? targetType,

    /// Component category, e.g. "library_item", "vulnerability".
    @JsonKey(name: 'target_component', fromJson: _toNullableString)
    String? targetComponent,

    /// State details — may be a nested object. Extracted as description.
    @JsonKey(name: 'new_state', fromJson: _descriptionFromNewState)
    String? newState,
  }) = _AuditEvent;

  factory AuditEvent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventFromJson(json);
}
