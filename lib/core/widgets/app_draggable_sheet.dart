import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/shared_widgets/drag_handle.dart';

class AppDraggableSheet extends StatelessWidget {
  const AppDraggableSheet({
    super.key,
    required this.scrollController,
    required this.child,
    this.initialChildSize = 0.45,
    this.minChildSize = 0.15,
    this.maxChildSize = 0.5,
    this.controller,
  });

  final ScrollController scrollController;
  final Widget child;
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;
  final DraggableScrollableController? controller;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: controller,
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      builder: (context, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: ListView(
            controller: controller,
            children: [const DragHandle(), child],
          ),
        );
      },
    );
  }
}
