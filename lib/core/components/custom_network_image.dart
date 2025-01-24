import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';


class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final Border? border;
  final BorderRadius? borderRadius;
  final BoxShape boxShape;
  final Color? backgroundColor;
  final Widget? child;
  final ColorFilter? colorFilter;
  final String? imageErrorUrl;

  const CustomNetworkImage({
    super.key,
    this.child,
    this.colorFilter,
    required this.imageUrl,
    this.imageErrorUrl,
    this.backgroundColor,
    required this.height,
    required this.width,
    this.border,
    this.borderRadius,
    this.boxShape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
            shape: boxShape,
            color: backgroundColor,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              colorFilter: colorFilter,
            ),
          ),
          child: child,
        );
      },
      placeholder: (context, url) {
        return CircularProgressIndicator();
      },
      errorWidget: (context, url, error) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
            shape: boxShape,
            color: Colors.grey.withOpacity(0.6),
            image: DecorationImage(
              image: AssetImage(imageErrorUrl ?? dummyUserIcon),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}