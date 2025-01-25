import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
class CoinPointWidget extends StatelessWidget {
  final String? point;
  const CoinPointWidget({
    super.key, this.point,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: padding4,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.kPrimaryAccentColor,
          ),
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(50.r)),
      child:  Row(
        spacing: 6.w,
        children: [
          Image.asset(
            mermaidIcon,
            height: 24.w,
          ),

          ///======================== dynamic points===================///
          CustomText(
            text:point?? '10000',
            style: poppinsMedium,
            fontSize: getFontSizeSmall(context),
          )
        ],
      ),
    );
  }
}