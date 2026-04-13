import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../utils/logger_service.dart';

/// Lightweight JSON file cache for API responses.
///
/// Stores serialized JSON data on disk, scoped per profile to prevent
/// data leaking between tenants. Supports TTL-based freshness checks.
class CacheService {
  CacheService({required this.profileId});

  final String profileId;
  Directory? _cacheDir;

  /// Returns the cache directory, creating it if needed.
  Future<Directory> _dir() async {
    if (_cacheDir != null) return _cacheDir!;
    final appDir = await getApplicationDocumentsDirectory();
    _cacheDir = Directory('${appDir.path}/cache/$profileId');
    if (!_cacheDir!.existsSync()) {
      _cacheDir!.createSync(recursive: true);
    }
    return _cacheDir!;
  }

  /// Builds a safe filename from a cache key.
  String _filename(String key) =>
      key.replaceAll(RegExp(r'[^\w\-.]'), '_');

  /// Writes [data] to cache under [key].
  Future<void> write(String key, dynamic data) async {
    try {
      final dir = await _dir();
      final file = File('${dir.path}/${_filename(key)}.json');
      final envelope = {
        'cachedAt': DateTime.now().toIso8601String(),
        'data': data,
      };
      await file.writeAsString(jsonEncode(envelope));
    } catch (e) {
      log.w('CacheService: write failed for $key: $e');
    }
  }

  /// Reads cached data for [key]. Returns `null` if missing or corrupt.
  Future<T?> read<T>(String key) async {
    try {
      final dir = await _dir();
      final file = File('${dir.path}/${_filename(key)}.json');
      if (!file.existsSync()) return null;
      final envelope = jsonDecode(await file.readAsString());
      return envelope['data'] as T?;
    } catch (e) {
      log.w('CacheService: read failed for $key: $e');
      return null;
    }
  }

  /// Returns `true` if cached data for [key] is fresher than [maxAge].
  Future<bool> isFresh(String key, {Duration maxAge = const Duration(minutes: 5)}) async {
    try {
      final dir = await _dir();
      final file = File('${dir.path}/${_filename(key)}.json');
      if (!file.existsSync()) return false;
      final envelope = jsonDecode(await file.readAsString());
      final cachedAt = DateTime.parse(envelope['cachedAt'] as String);
      return DateTime.now().difference(cachedAt) < maxAge;
    } catch (_) {
      return false;
    }
  }

  /// Removes a specific cache entry.
  Future<void> remove(String key) async {
    try {
      final dir = await _dir();
      final file = File('${dir.path}/${_filename(key)}.json');
      if (file.existsSync()) await file.delete();
    } catch (e) {
      log.w('CacheService: remove failed for $key: $e');
    }
  }

  /// Clears all cached data for this profile.
  Future<void> clearAll() async {
    try {
      final dir = await _dir();
      if (dir.existsSync()) {
        await dir.delete(recursive: true);
        _cacheDir = null;
      }
    } catch (e) {
      log.w('CacheService: clearAll failed: $e');
    }
  }
}
