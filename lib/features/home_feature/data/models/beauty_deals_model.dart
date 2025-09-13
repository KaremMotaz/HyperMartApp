import 'package:hyper_mart_app/core/theming/assets_manager.dart';

class BeautyDealsModel {
  final String image;
  final int discount;

  BeautyDealsModel({required this.image, required this.discount});

  static List<BeautyDealsModel> beautyDeals = [
    BeautyDealsModel(image: AssetsManager.brandDeal1Image, discount: 10),
    BeautyDealsModel(image: AssetsManager.brandDeal2Image, discount: 20),
    BeautyDealsModel(image: AssetsManager.brandDeal3Image, discount: 15),
    BeautyDealsModel(image: AssetsManager.brandDeal4Image, discount: 5),
    BeautyDealsModel(image: AssetsManager.brandDeal5Image, discount: 50),
    BeautyDealsModel(image: AssetsManager.brandDeal6Image, discount: 60),
  ];
}
