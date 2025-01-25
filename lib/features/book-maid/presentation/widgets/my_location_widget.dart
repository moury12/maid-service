import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
class MyLocationWidget extends StatelessWidget {
  const MyLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(locationIcon, height: 16.h),
        SizedBox(width: 6.w),
        CustomText(
          text: AppStaticString.myLocation,
          style: poppinsRegular,
          fontSize: getFontSizeSemiSmall(context),
        ),
      ],
    );
  }
}
