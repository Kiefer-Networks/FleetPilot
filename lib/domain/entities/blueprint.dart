import 'package:freezed_annotation/freezed_annotation.dart';

part 'blueprint.freezed.dart';
part 'blueprint.g.dart';

/// Represents an MDM blueprint (device configuration template).
@freezed
abstract class Blueprint with _$Blueprint {
  const factory Blueprint({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'enrollment_code_is_active')
    @Default(false)
    bool enrollmentCodeIsActive,
    @JsonKey(name: 'enrollment_code_code') String? enrollmentCode,
  }) = _Blueprint;

  factory Blueprint.fromJson(Map<String, dynamic> json) =>
      _$BlueprintFromJson(json);
}
