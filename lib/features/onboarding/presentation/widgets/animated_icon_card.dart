import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_mart_app/features/onboarding/models/onboarding_model.dart';

class AnimatedIconCard extends StatefulWidget {
  const AnimatedIconCard({super.key, required this.onboardingModel});

  final OnboardingModel onboardingModel;

  @override
  State<AnimatedIconCard> createState() => _AnimatedIconCardState();
}

class _AnimatedIconCardState extends State<AnimatedIconCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotationAnimation;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _rotationAnimation = Tween<double>(
      begin: 0.25,
      end: 0.0,
    ).chain(CurveTween(curve: Curves.easeOutBack)).animate(_controller);

    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(
          begin: 0.6,
          end: 1.3,
        ).chain(CurveTween(curve: Curves.easeOutExpo)),
        weight: 60,
      ),

      TweenSequenceItem(
        tween: Tween(
          begin: 1.3,
          end: 0.9,
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 25,
      ),

      TweenSequenceItem(
        tween: Tween(
          begin: 0.9,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 15,
      ),
    ]).animate(_controller);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward(from: 0);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: RotationTransition(
        turns: _rotationAnimation,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: widget.onboardingModel.colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: SvgPicture.asset(
            widget.onboardingModel.icon,
            width: 40,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
