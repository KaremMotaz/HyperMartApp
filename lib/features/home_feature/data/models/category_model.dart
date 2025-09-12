import '../../../../core/theming/assets_manager.dart';

class CategoryModel {
  final String title;
  final String image;
  final int colorCode;
  CategoryModel({
    required this.title,
    required this.image,
    required this.colorCode,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      title: 'Groceries',
      image: AssetsManager.groceriesIcon,
      colorCode: 0xff4AB7B6,
    ),
    CategoryModel(
      title: 'Appliances',
      image: AssetsManager.appliancesIcon,
      colorCode: 0xff4b9dcb,
    ),
    CategoryModel(
      title: 'Fashion',
      image: AssetsManager.fashionIcon,
      colorCode: 0xffbb6e9c,
    ),
    CategoryModel(
      title: 'Furniture',
      image: AssetsManager.furnitureIcon,
      colorCode: 0xffa187d9,
    ),
  ];
}
