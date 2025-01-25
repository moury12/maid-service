import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_network_image.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
class ImgWithTitleContentWidget extends StatelessWidget {
  final String img;
  final String title;
  const ImgWithTitleContentWidget({
    super.key, required this.img, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.h,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomNetworkImage(
          imageErrorUrl:  dummyCatIcon,
          height: 24.w, imageUrl: img, width: 24.w,
        ),
        FittedBox(
          child: CustomText(
            text: title,
            style: poppinsMedium,
            color: AppColors.kSubTextColor,
            fontSize: getFontSizeSemiSmall(context),
          ),
        )
      ],
    );
  }
}
