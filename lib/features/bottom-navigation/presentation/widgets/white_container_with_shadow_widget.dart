import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/padding_constant.dart';

class WhiteContainerWithShadowWidget extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final bool? isBoxShadow;
  const WhiteContainerWithShadowWidget({
    super.key, this.child, this.padding, this.isBoxShadow=true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:padding?? padding12,
      decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow:isBoxShadow==true? [
            BoxShadow(
                color: Color(0xff101828).withOpacity(.1),
                spreadRadius: 0,
                blurRadius: 2)
          ]:[]),
      child: child,
    );
  }
}
