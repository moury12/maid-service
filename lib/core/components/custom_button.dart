import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height,
      this.width = double.maxFinite,
      required this.onTap,
      this.title = '',
      this.marginVerticel = 0,
      this.marginHorizontal = 0,
      this.fillColor = AppColors.kPrimaryColor,
      this.textColor = AppColors.kWhiteColor,
      this.borderColor = AppColors.kPrimaryColor,
      this.child,
      this.img,
      this.icon,
      this.fontSize,
      this.radius,
      this.isLoading = false,
      this.imgIconColor = AppColors.kWhiteColor,
      this.padding});

  final double? height;
  final double? radius;
  final double width;
  final Color fillColor;
  final Color imgIconColor;
  final Color borderColor;
  final bool? isLoading;

  final Color textColor;

  final VoidCallback onTap;

  final String title;
  final Widget? child;
  final String? img;
  final EdgeInsets? padding;
  final IconData? icon;

  final double marginVerticel;
  final double? fontSize;
  final double marginHorizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: marginVerticel, horizontal: marginHorizontal),
      alignment: Alignment.center,
      height: height,
      // padding:padding?? padding16V,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(radius ?? 63.r),
          color: fillColor),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(radius ?? 63.r),
        child: InkWell(
          splashColor: AppColors.kButtonBackgroundColor,
          borderRadius: BorderRadius.circular(radius ?? 63.r),
          onTap: isLoading == true
              ? () {}
              : () {
                  onTap();
                },
          child: Padding(
            padding: padding ?? padding16V,
            child: isLoading == true
                ? const DefaultProgressIndicator()
                : child ??
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icon != null || img != null
                            ? space8W
                            : const SizedBox.shrink(),
                        img != null
                            ? Image.asset(
                                img ?? '',
                                height: 16.w,
                                width: 16.w,
                                color: imgIconColor,
                              )
                            : icon != null
                                ? Icon(
                                    icon,
                                    size: 24.sp,
                                    color: imgIconColor,
                                  )
                                : const SizedBox.shrink(),
                        icon != null || img != null
                            ? space8W
                            : const SizedBox.shrink(),
                        CustomText(
                            text: title,
                            textAlign: TextAlign.center,
                            style: poppinsSemiBold.copyWith(
                                color: textColor,
                                fontSize:
                                    fontSize ?? getFontSizeSemiSmall(context))),
                      ],
                    ),
          ),
        ),
      ),
    );
  }
}

class DefaultProgressIndicator extends StatelessWidget {
  final Color? color;
  final double? strokeWidth;
  const DefaultProgressIndicator({
    super.key,
    this.color,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? AppColors.kWhiteColor,
      strokeWidth: strokeWidth ?? 4,
    );
  }
}
