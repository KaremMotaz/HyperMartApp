import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/offer_item.dart';

class WeekOffers extends StatefulWidget {
  const WeekOffers({super.key});

  @override
  State<WeekOffers> createState() => _WeekOffersState();
}

class _WeekOffersState extends State<WeekOffers> {
  final PageController _pageController = PageController(
    viewportFraction: 0.75,
    initialPage: 1,
  );
  double _currentPage = 1.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          double scale = 1.0 - ((_currentPage - index).abs() * 0.15);
          scale = scale.clamp(0.3, 1);
          return Transform.scale(scale: scale, child: OfferItem());
        },
      ),
    );
  }
}
