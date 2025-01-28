import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  final IconData? icon;
  final double? iconSize;
  final double? imgSize;
  final double? containerSize;
  final EdgeInsets? padding;
  final String? img;
  final Function()? onPressed;
   const CircleButtonWidget({
    super.key,
    this.icon,
    this.onPressed,
    this.img,
    this.iconSize,
    this.padding,
    this.imgSize =20,
    this.containerSize=36,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8),
        alignment: Alignment.center,
        height: containerSize!.w,
        width: containerSize!.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.kButtonBackgroundColor,
        ),
        child: IconButton(
            padding: padding,
            onPressed: onPressed,
            icon: img != null
                ? Image.asset(
                    img ?? '',
                    height: imgSize!.w,
                    width: imgSize!.w,
                    color: AppColors.kTextColor,
                  )
                : Icon(
                    icon ?? CupertinoIcons.back,
                    color: AppColors.kTextColor,
                    size: iconSize ?? 30.sp,
                  )));
  }
}
