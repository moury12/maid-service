import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? radius;
  final double? width;
  final Widget widget;
  final EdgeInsets? padding;
  const CustomContainer({
    super.key,
    this.backgroundColor,
    this.radius,
    this.padding,
    required this.widget,
    this.width, this.borderColor, this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 1),
          color: backgroundColor ?? AppColors.kButtonBackgroundColor,
          borderRadius: BorderRadius.circular(radius ?? 50.w)),
      child: widget,
    );
  }
}
