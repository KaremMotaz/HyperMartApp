import '../../../../core/theming/assets_manager.dart';

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
      AssetsManager.item1,
      AssetsManager.item2,
      AssetsManager.item3,
      AssetsManager.item1,
      AssetsManager.item2,
      AssetsManager.item3,
      AssetsManager.item1,
      AssetsManager.item2,
    ],
  );
}
