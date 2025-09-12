import 'package:hyper_mart_app/core/theming/assets_manager.dart';

class ProductModel {
  final String image;
  final String title;
  final String price;
  final double rating;
  final String category;
  final bool isDiscountFound ;

  ProductModel( {
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.category,
    this.isDiscountFound = false,
  });

  static List<ProductModel> products = [
    ProductModel(
      image: AssetsManager.strawberryImage,
      title: 'Strawberry',
      price: '10',
      rating: 4.5,
      category: 'Groceries',
      isDiscountFound: true,
    ),
    ProductModel(
      image: AssetsManager.chipsImage,
      title: 'Fried Chips',
      price: '12',
      rating: 3.8,
      category: 'Groceries',
    ),
    ProductModel(
      image: AssetsManager.chairImage,
      title: 'Moder Chair',
      price: '3599',
      rating: 4.1,
      category: 'Furniture',
    ),
    ProductModel(
      image: AssetsManager.washingMachineImage,
      title: 'LG washing machine',
      price: '45,999',
      rating: 3.6,
      category: 'Appliances',
    ),
  ];
}
