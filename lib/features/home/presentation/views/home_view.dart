import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/categories_section.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/custom_appbar.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/custom_text_field.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/exclusive_beauty_deals_section.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/location_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/popular_deals_section.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/previous_order_section.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/top_brands_section.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/week_offers.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../categories/data/repos/categories_repo.dart';
import '../../../categories/manager/categories_cubit/categories_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
      ),
    );
  }
}
