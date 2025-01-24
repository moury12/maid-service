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
  const CustomVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding12V,
      child: Container(
        color: AppColors.kButtonBackgroundColor,
        height: 2.w,
        width: double.infinity,
      ),
    );
  }
}