import '../../domain/entities/blueprint.dart';
import '../../domain/entities/blueprint_template.dart';
import '../../domain/entities/library_item.dart';
import '../../domain/entities/library_item_status.dart';
import '../../domain/repositories/blueprint_repository.dart';
import '../datasources/remote/blueprint_api.dart';

/// Concrete implementation of [BlueprintRepository] using [BlueprintApi].
class BlueprintRepositoryImpl implements BlueprintRepository {
  BlueprintRepositoryImpl({required this.api});

  final BlueprintApi api;

  @override
  Future<List<Blueprint>> getBlueprints() {
    return api.getBlueprints();
  }

  @override
  Future<Blueprint> getBlueprint(String id) {
    return api.getBlueprint(id);
  }

  @override
  Future<Blueprint> createBlueprint(Map<String, dynamic> body) {
    return api.createBlueprint(body);
  }

  @override
  Future<Blueprint> updateBlueprint(String id, Map<String, dynamic> body) {
    return api.updateBlueprint(id, body);
  }

  @override
  Future<void> deleteBlueprint(String id) {
    return api.deleteBlueprint(id);
  }

  @override
  Future<List<LibraryItem>> getBlueprintLibraryItems(String blueprintId) {
    return api.getBlueprintLibraryItems(blueprintId);
  }

  @override
  Future<void> assignLibraryItem(
    String blueprintId,
    Map<String, dynamic> body,
  ) {
    return api.assignLibraryItem(blueprintId, body);
  }

  @override
  Future<List<BlueprintTemplate>> getBlueprintTemplates() {
    return api.getBlueprintTemplates();
  }

  @override
  Future<String> getOtaEnrollmentProfile(String blueprintId) {
    return api.getOtaEnrollmentProfile(blueprintId);
  }

  @override
  Future<List<LibraryItemActivity>> getLibraryItemActivity(String itemId) {
    return api.getLibraryItemActivity(itemId);
  }

  @override
  Future<List<LibraryItemStatus>> getLibraryItemStatus(String itemId) {
    return api.getLibraryItemStatus(itemId);
  }
}
