import '../entities/device.dart';
import '../repositories/device_repository.dart';

/// Fetches all devices with optional filters and pagination tracking.
class GetDevices {
  GetDevices({required this.repository});

  final DeviceRepository repository;

  /// Returns all devices matching the given filters.
  ///
  /// [platform] — optional platform filter.
  /// [blueprintId] — optional blueprint filter.
  /// [onPageLoaded] — callback with running total after each page.
  Future<List<Device>> call({
    String? platform,
    String? blueprintId,
    void Function(int loadedCount)? onPageLoaded,
  }) {
    return repository.getDevices(
      platform: platform,
      blueprintId: blueprintId,
      onPageLoaded: onPageLoaded,
    );
  }
}
