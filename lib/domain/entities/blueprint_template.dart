import 'package:freezed_annotation/freezed_annotation.dart';

part 'blueprint_template.freezed.dart';
part 'blueprint_template.g.dart';

/// A blueprint template from Kandji.
@freezed
abstract class BlueprintTemplate with _$BlueprintTemplate {
  const factory BlueprintTemplate({
    String? id,
    String? name,
    String? description,
    String? icon,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _BlueprintTemplate;

  factory BlueprintTemplate.fromJson(Map<String, dynamic> json) =>
      _$BlueprintTemplateFromJson(json);
}
