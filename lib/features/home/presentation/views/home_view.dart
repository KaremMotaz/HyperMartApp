import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/categories/presentation/widgets/categories_section.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/exclusive_beauty_deals_section.dart';
import '../widgets/location_widget.dart';
import '../widgets/popular_deals_section.dart';
import '../widgets/previous_order_section.dart';
import '../widgets/top_brands_section.dart';
import '../widgets/week_offers.dart';

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
                    PopularDealsSection(),
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
