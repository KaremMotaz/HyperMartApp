import 'package:hive/hive.dart';

class LocalCacheService<T> {
  Future<T>? getData({required String key, required String boxName}) async {
    final box = Hive.box(boxName);
    final data = box.get(key);
    return data as T;
  }

  Future<void> saveData({
    required String key,
    required String boxName,
    required T data,
  }) async {
    final box = Hive.box(boxName);
    await box.put(key, data);
  }

  Future<void> clear({required String key, required String boxName}) async {
    final box = Hive.box(boxName);
    await box.delete(key);
  }

  Future<void> clearAll({required String boxName}) async {
    final box = Hive.box(boxName);
    await box.clear();
  }
}
