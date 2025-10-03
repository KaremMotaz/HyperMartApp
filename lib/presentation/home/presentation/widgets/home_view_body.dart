import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/manager/cubit/categories_cubit.dart';

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
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
            const WeekOffers(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  BlocProvider(
                    create: (context) => CategoriesCubit(
                      categoriesRepo: getIt.get<CategoriesRepo>(),
                    )..getCategories(),
                    child: const CategoriesSection(),
                  ),
                  const SizedBox(height: 20),
                  const PreviousOrderSection(),
                  const SizedBox(height: 20),
                  const PopularDealsSection(),
                  const SizedBox(height: 20),
                  const TopBrandsSection(),
                  const SizedBox(height: 20),
                  const ExclusiveBeautyDealsSection(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
