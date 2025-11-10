import 'package:flutter/material.dart';

import '../widgets/appbar/custom_appbar.dart';
import '../widgets/brands/top_brands_section.dart';
import '../widgets/categories/categories_section.dart';
import '../widgets/deals/exclusive_beauty_deals_section.dart';
import '../widgets/offers/week_offers.dart';
import '../widgets/orders/previous_order_section.dart';
import '../widgets/shared_widgets/custom_text_field.dart';
import '../widgets/shared_widgets/location_widget.dart';
import '../widgets/products/products_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomAppbar(),
                    SizedBox(height: 20),
                    LocationWidget(),
                    SizedBox(height: 20),
                    CustomTextField(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              WeekOffers(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CategoriesSection(),
                    SizedBox(height: 20),
                    PreviousOrderSection(),
                    SizedBox(height: 20),
                    ProductsSection(),
                    SizedBox(height: 20),
                    TopBrandsSection(),
                    SizedBox(height: 20),
                    ExclusiveBeautyDealsSection(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
