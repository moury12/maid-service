import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
class ConfirmYourServiceContent extends StatelessWidget {
  final String label;
  final String icon;
  final String subText;
  const ConfirmYourServiceContent({
    super.key, required this.label, required this.icon, required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6.h,
      children: [
        Row(spacing: 6.w,
          children: [
            Image.asset(icon,height: 18.w,),
            CustomText(text: label,
              style: poppinsRegular,color: AppColors.kSubTextColor,)
          ],),
        CustomText(text: subText, fontSize: getFontSizeSmall(context),color: AppColors.kSubTextColor,style: poppinsRegular,)
      ],
    );
  }
}
