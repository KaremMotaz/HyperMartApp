import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/categories_section.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/custom_appbar.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/custom_text_field.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/exclusive_beauty_deals_section.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/location_widget.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/popular_deals_section.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/previous_order_section.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/top_brands_section.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/week_offers.dart';

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
