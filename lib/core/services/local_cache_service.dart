import 'package:hive_flutter/hive_flutter.dart';

class LocalCacheService<T> {
  Box<T> getBox(String boxName) => Hive.box<T>(boxName);

  Future<T?> getData({required String key, required String boxName}) async {
    return getBox(boxName).get(key);
  }

  Future<void> saveData({
    required String key,
    required String boxName,
    required T data,
  }) async {
    await getBox(boxName).put(key, data);
  }

  Future<void> clear({required String key, required String boxName}) async {
    await getBox(boxName).delete(key);
  }

  Future<void> clearAll({required String boxName}) async {
    await getBox(boxName).clear();
  }

  bool isContains({required String boxName, required String key}) {
    return getBox(boxName).containsKey(key);
  }

  List<T> getBoxValues({required String boxName}) {
    return getBox(boxName).values.toList();
  }
}
