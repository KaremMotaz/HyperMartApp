import 'package:hive/hive.dart';
import 'get_products_response.dart';

class GetProductsResponseAdapter extends TypeAdapter<GetProductsResponse> {
  @override
  final int typeId = 3;

  @override
  GetProductsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return GetProductsResponse(
      items: (fields[0] as List).cast<ProductModel>(),
      page: fields[1] as int,
      pageSize: fields[2] as int,
      totalCount: fields[3] as int,
      hasNextPage: fields[4] as bool,
      hasPreviousPage: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, GetProductsResponse obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.items)
      ..writeByte(1)
      ..write(obj.page)
      ..writeByte(2)
      ..write(obj.pageSize)
      ..writeByte(3)
      ..write(obj.totalCount)
      ..writeByte(4)
      ..write(obj.hasNextPage)
      ..writeByte(5)
      ..write(obj.hasPreviousPage);
  }
}

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 4;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return ProductModel(
      id: fields[0] as String,
      productCode: fields[1] as String,
      name: fields[2] as String,
      description: fields[3] as String,
      arabicName: fields[4] as String,
      arabicDescription: fields[5] as String,
      coverPictureUrl: fields[6] as String,
      productPictures:
          (fields[7] as List?)?.cast<String>(),
      price: fields[8] as double,
      stock: fields[9] as int,
      weight: fields[10] as double,
      color: fields[11] as String,
      rating: fields[12] as double,
      reviewsCount: fields[13] as int,
      discountPercentage: fields[14] as int,
      sellerId: fields[15] as String,
      categories: (fields[16] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productCode)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.arabicName)
      ..writeByte(5)
      ..write(obj.arabicDescription)
      ..writeByte(6)
      ..write(obj.coverPictureUrl)
      ..writeByte(7)
      ..write(obj.productPictures)
      ..writeByte(8)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.stock)
      ..writeByte(10)
      ..write(obj.weight)
      ..writeByte(11)
      ..write(obj.color)
      ..writeByte(12)
      ..write(obj.rating)
      ..writeByte(13)
      ..write(obj.reviewsCount)
      ..writeByte(14)
      ..write(obj.discountPercentage)
      ..writeByte(15)
      ..write(obj.sellerId)
      ..writeByte(16)
      ..write(obj.categories);
  }
}
