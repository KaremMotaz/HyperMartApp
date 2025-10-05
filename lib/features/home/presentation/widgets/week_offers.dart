import 'package:flutter/material.dart';

import 'offer_item.dart';

class WeekOffers extends StatefulWidget {
  const WeekOffers({super.key});

  @override
  State<WeekOffers> createState() => _WeekOffersState();
}

class _WeekOffersState extends State<WeekOffers> {
  final PageController _pageController = PageController(
    viewportFraction: 0.85,
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
    return AspectRatio(
      aspectRatio: 2.2,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          double scale = 1.0 - ((_currentPage - index).abs() * 0.2);
          scale = scale.clamp(0.9, 1);
          return Transform.scale(
            scale: scale,
            child: const OfferItem(),
          );
        },
      ),
    );
  }
}
