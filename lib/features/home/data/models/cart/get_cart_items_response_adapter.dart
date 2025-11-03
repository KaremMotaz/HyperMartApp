import 'package:hive/hive.dart';

import 'get_cart_items_response.dart';

class GetCartItemsResponseAdapter extends TypeAdapter<GetCartItemsResponse> {
  @override
  final int typeId = 5;

  @override
  GetCartItemsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return GetCartItemsResponse(
      cartId: fields[0] as String,
      cartItems: (fields[1] as List).cast<CartItemModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, GetCartItemsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.cartId)
      ..writeByte(1)
      ..write(obj.cartItems);
  }
}

class CartItemModelAdapter extends TypeAdapter<CartItemModel> {
  @override
  final int typeId = 6;

  @override
  CartItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return CartItemModel(
      itemId: fields[0] as String,
      productId: fields[1] as String,
      productName: fields[2] as String,
      productCoverUrl: fields[3] as String,
      productStock: fields[4] as int,
      weightInGrams: fields[5] as int,
      quantity: fields[6] as int,
      discountPercentage: fields[7] as num,
      basePricePerUnit: fields[8] as num,
      finalPricePerUnit: fields[9] as num,
      totalPrice: fields[10] as num,
    );
  }

  @override
  void write(BinaryWriter writer, CartItemModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.itemId)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.productCoverUrl)
      ..writeByte(4)
      ..write(obj.productStock)
      ..writeByte(5)
      ..write(obj.weightInGrams)
      ..writeByte(6)
      ..write(obj.quantity)
      ..writeByte(7)
      ..write(obj.discountPercentage)
      ..writeByte(8)
      ..write(obj.basePricePerUnit)
      ..writeByte(9)
      ..write(obj.finalPricePerUnit)
      ..writeByte(10)
      ..write(obj.totalPrice);
  }
}
