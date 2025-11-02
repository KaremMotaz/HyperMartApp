import 'package:hive/hive.dart';

import 'get_categories_response.dart';

class GetCategoriesResponseAdapter extends TypeAdapter<GetCategoriesResponse> {
  @override
  final int typeId = 1;

  @override
  GetCategoriesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return GetCategoriesResponse(
      categories: (fields[0] as List).cast<Category>(),
    );
  }

  @override
  void write(BinaryWriter writer, GetCategoriesResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.categories);
  }
}
