import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';

class NetworkImageWithFallback extends StatefulWidget {
  const NetworkImageWithFallback({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.borderRadius = 16,
    this.backgroundColor,
    this.padding,
    this.child,
    this.fit = BoxFit.fill,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final double borderRadius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final BoxFit fit;

  @override
  State<NetworkImageWithFallback> createState() =>
      _NetworkImageWithFallbackState();
}

class _NetworkImageWithFallbackState extends State<NetworkImageWithFallback> {
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      padding: widget.padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        color: widget.backgroundColor ?? AppColors.grey,
        image: DecorationImage(
          image: _hasError
              ? const AssetImage(AppAssets.dummyAssetImage)
              : CachedNetworkImageProvider(widget.imageUrl, scale: 1.5)
                    as ImageProvider,
          fit: widget.fit,
          onError: (exception, stackTrace) {
            if (!_hasError) {
              setState(() => _hasError = true);
            }
          },
        ),
      ),
      child: widget.child,
    );
  }
}
