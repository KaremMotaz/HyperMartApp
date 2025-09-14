abstract class DatabaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });

  Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
  });

  Future<void> deleteData({required String path});

  Future<dynamic> getData({
    required String path,
    String? orderBy,
    bool descending = false,
    int? limit,
  });

  Future<bool> checkIfDataExists({required String path});
}
