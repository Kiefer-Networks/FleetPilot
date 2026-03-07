import 'package:freezed_annotation/freezed_annotation.dart';

part 'mdm_user.freezed.dart';
part 'mdm_user.g.dart';

/// Represents a user record in the MDM tenant.
@freezed
abstract class MdmUser with _$MdmUser {
  const factory MdmUser({
    required String id,
    String? name,
    String? email,
    @JsonKey(name: 'job_title') String? jobTitle,
    String? department,
    @JsonKey(name: 'device_count') @Default(0) int deviceCount,
    @Default(false) bool archived,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _MdmUser;

  factory MdmUser.fromJson(Map<String, dynamic> json) =>
      _$MdmUserFromJson(json);
}
