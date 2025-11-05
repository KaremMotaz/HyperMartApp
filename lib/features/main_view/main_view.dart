import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/apply_coupon_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/decrement_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/delete_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_cart_items_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/update_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';

import 'logic/home_navigation_controller.dart';
import 'presentation/widgets/home_nav_bar.dart';
import 'presentation/widgets/main_page_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final controller = HomeNavigationController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(
        getCartItemsRepo: getIt.get<GetCartItemsRepo>(),
        addCartItemRepo: getIt.get<AddCartItemRepo>(),
        decrementCartItemRepo: getIt.get<DecrementCartItemRepo>(),
        deleteCartItemRepo: getIt.get<DeleteCartItemRepo>(),
        updateCartItemRepo: getIt.get<UpdateCartItemRepo>(),
        applyCouponRepo: getIt.get<ApplyCouponRepo>(),
      )..getCartItems(),
      child: Scaffold(
        bottomNavigationBar: HomeNavBar(
          selectedIndex: controller.selectedIndex,
          onTap: (index) {
            controller.onItemTapped(index, () => setState(() {}));
          },
        ),
        body: MainPageView(
          controller: controller.pageController,
          onPageChanged: (index) {
            controller.onPageChanged(index, () => setState(() {}));
          },
        ),
      ),
    );
  }
}
