import 'package:freezed_annotation/freezed_annotation.dart';

part 'ade_integration.freezed.dart';
part 'ade_integration.g.dart';

/// An Apple Automated Device Enrollment integration.
@freezed
abstract class AdeIntegration with _$AdeIntegration {
  const factory AdeIntegration({
    String? id,
    String? name,
    @JsonKey(name: 'server_name') String? serverName,
    @JsonKey(name: 'server_uuid') String? serverUuid,
    @JsonKey(name: 'org_name') String? orgName,
    @JsonKey(name: 'org_email') String? orgEmail,
    @JsonKey(name: 'org_phone') String? orgPhone,
    @JsonKey(name: 'org_address') String? orgAddress,
    @JsonKey(name: 'token_expiry_date') String? tokenExpiryDate,
    @JsonKey(name: 'default_blueprint_id') String? defaultBlueprintId,
    @JsonKey(name: 'device_count') int? deviceCount,
    @JsonKey(name: 'is_token_valid') @Default(true) bool isTokenValid,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _AdeIntegration;

  factory AdeIntegration.fromJson(Map<String, dynamic> json) =>
      _$AdeIntegrationFromJson(json);
}
