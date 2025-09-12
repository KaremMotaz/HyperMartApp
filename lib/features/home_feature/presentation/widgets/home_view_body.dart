import 'package:flutter/material.dart';
import 'categories_section.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'exclusive_beauty_deals_section.dart';
import 'location_widget.dart';
import 'popular_deals_section.dart';
import 'previous_order_section.dart';
import 'top_brands_section.dart';
import 'week_offers.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              CustomAppbar(),
              SizedBox(height: 20),
              LocationWidget(),
              SizedBox(height: 20),
              CustomTextField(),
              SizedBox(height: 20),
              WeekOffers(),
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
      ),
    );
  }
}
