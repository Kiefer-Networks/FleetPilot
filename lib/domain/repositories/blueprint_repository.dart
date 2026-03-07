import '../entities/blueprint.dart';
import '../entities/blueprint_template.dart';
import '../entities/library_item.dart';
import '../entities/library_item_status.dart';

/// Abstract interface for blueprint API operations.
abstract interface class BlueprintRepository {
  /// Fetches all blueprints.
  Future<List<Blueprint>> getBlueprints();

  /// Fetches a single blueprint by [id].
  Future<Blueprint> getBlueprint(String id);

  /// Creates a new blueprint.
  Future<Blueprint> createBlueprint(Map<String, dynamic> body);

  /// Updates a blueprint.
  Future<Blueprint> updateBlueprint(String id, Map<String, dynamic> body);

  /// Deletes a blueprint.
  Future<void> deleteBlueprint(String id);

  /// Fetches library items assigned to a blueprint.
  Future<List<LibraryItem>> getBlueprintLibraryItems(String blueprintId);

  /// Assigns or removes a library item from a blueprint.
  Future<void> assignLibraryItem(String blueprintId, Map<String, dynamic> body);

  /// Fetches blueprint templates.
  Future<List<BlueprintTemplate>> getBlueprintTemplates();

  /// Downloads OTA enrollment profile for a blueprint.
  Future<String> getOtaEnrollmentProfile(String blueprintId);

  /// Fetches library item activity.
  Future<List<LibraryItemActivity>> getLibraryItemActivity(String itemId);

  /// Fetches library item deployment status per device.
  Future<List<LibraryItemStatus>> getLibraryItemStatus(String itemId);
}
