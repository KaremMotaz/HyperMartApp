import '../../../../core/theming/app_assets.dart';

class BeautyDealsModel {
  final String image;
  final int discount;

  BeautyDealsModel({required this.image, required this.discount});

  static List<BeautyDealsModel> beautyDeals = [
    BeautyDealsModel(image: AppAssets.brandDeal1Image, discount: 10),
    BeautyDealsModel(image: AppAssets.brandDeal2Image, discount: 20),
    BeautyDealsModel(image: AppAssets.brandDeal3Image, discount: 15),
    BeautyDealsModel(image: AppAssets.brandDeal4Image, discount: 5),
    BeautyDealsModel(image: AppAssets.brandDeal5Image, discount: 50),
    BeautyDealsModel(image: AppAssets.brandDeal6Image, discount: 60),
  ];
}
