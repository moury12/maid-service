import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  final IconData? icon;
  final String? img;
  final Function()? onPressed;
  const CircleButtonWidget({
    super.key,
    this.icon,
    this.onPressed,
    this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.kButtonBackgroundColor,
        ),
        child: IconButton(
            onPressed: onPressed,
            icon: img != null
                ? Image.asset(img ?? '',height: 20.w,
            width: 20.w,)

                : Icon(
                    icon ?? CupertinoIcons.back,
                    color: AppColors.kTextColor,
                    size: 30.sp,
                  )));
  }
}
