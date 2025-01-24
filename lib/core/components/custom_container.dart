import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Color? backgroundColor;
  final double? radius;
  final Widget widget;
  final EdgeInsets? padding;
  const CustomContainer({
    super.key,
    this.backgroundColor,
    this.radius,
    this.padding,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.kButtonBackgroundColor,
          borderRadius: BorderRadius.circular(radius ?? 50.w)),
      child: widget,
    );
  }
}
