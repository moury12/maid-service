import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/padding_constant.dart';

class CustomHorizontalDivider extends StatelessWidget {
  const CustomHorizontalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding6H,
      child: Container(
        color: AppColors.kButtonBackgroundColor,
        width: 2.w,
        height: 50.h,
      ),
    );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  final EdgeInsets? padding;
  const CustomVerticalDivider({
    super.key, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:padding?? EdgeInsets.zero,
      child: Container(
        color: AppColors.kButtonBackgroundColor,
        height: 2.w,
        width: double.infinity,
      ),
    );
  }
}