import 'package:json_annotation/json_annotation.dart';

part 'get_products_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetProductsResponse {
  final List<ProductModel> items;

  GetProductsResponse({required this.items});

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsResponseToJson(this);
}

@JsonSerializable()
class ProductModel {
  final String id;
  final String productCode;
  final String name;
  final String description;
  final String arabicName;
  final String arabicDescription;
  final String coverPictureUrl;
  final List<String>? productPictures;
  final double price;
  final int stock;
  final double weight;
  final String color;
  final double rating;
  final int reviewsCount;
  final int discountPercentage;
  final String sellerId;
  final List<String> categories;

  ProductModel({
    required this.id,
    required this.productCode,
    required this.name,
    required this.description,
    required this.arabicName,
    required this.arabicDescription,
    required this.coverPictureUrl,
    this.productPictures,
    required this.price,
    required this.stock,
    required this.weight,
    required this.color,
    required this.rating,
    required this.reviewsCount,
    required this.discountPercentage,
    required this.sellerId,
    required this.categories,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  static List<ProductModel> dummyProducts = List.generate(
    10,
    (index) => ProductModel(
      id: "",
      productCode: "",
      name: "",
      description: "",
      arabicName: "",
      arabicDescription: "",
      coverPictureUrl: "",
      price: 0.0,
      stock: 0,
      weight: 0.0,
      color: "",
      rating: 0.0,
      reviewsCount: 0,
      discountPercentage: 0,
      sellerId: "",
      categories: ["", ""],
    ),
  );
}
