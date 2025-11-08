import 'package:hive/hive.dart';

class LocalCacheService<T> {
  Future<Box<T>> _openBoxIfNeeded(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      return await Hive.openBox<T>(boxName);
    }
    return Hive.box<T>(boxName);
  }

  Future<T?> getData({required String key, required String boxName}) async {
    final box = await _openBoxIfNeeded(boxName);
    return box.get(key);
  }

  Future<List<T>> getBoxValues({required String boxName}) async {
    final box = await _openBoxIfNeeded(boxName);
    return box.values.toList();
  }

  Future<void> saveData({
    required String key,
    required String boxName,
    required T data,
  }) async {
    final box = await _openBoxIfNeeded(boxName);
    await box.put(key, data);
  }

  Future<void> clear({required String key, required String boxName}) async {
    final box = await _openBoxIfNeeded(boxName);
    await box.delete(key);
  }

  Future<void> clearAll({required String boxName}) async {
    final box = await _openBoxIfNeeded(boxName);
    await box.clear();
  }

  Future<bool> isContains({required String boxName, required String key}) async {
    final box = await _openBoxIfNeeded(boxName);
    return box.containsKey(key);
  }
}
