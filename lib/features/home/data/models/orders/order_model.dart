import '../../../../../core/theming/app_assets.dart';

class OrderModel {
  final String id;
  final String price;
  final String date;
  final String status;
  final List<String> items;

  OrderModel({
    required this.id,
    required this.date,
    required this.status,
    required this.price,
    required this.items,
  });

  static OrderModel order = OrderModel(
    id: "28292999",
    price: "123",
    date: "On Wed, 27 Jul 2025",
    status: "Delivered",
    items: [
      AppAssets.item1,
      AppAssets.item2,
      AppAssets.item3,
      AppAssets.item1,
      AppAssets.item2,
      AppAssets.item3,
      AppAssets.item1,
      AppAssets.item2,
    ],
  );
}
