import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';

List<Map<String, dynamic>> onboardingData = [
  {
    "image": onboardingImage1,
    "background_img": onboardingScreenImage1,
    "title": RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Services at home like never ",
          style: protestRiotRegular.copyWith(
              color: AppColors.kTextColor, fontSize: 32.sp),
          children: [
            TextSpan(
              text: 'experienced ',
              style: protestRiotRegular.copyWith(
                  color: AppColors.kPrimaryColor, fontSize: 32.sp),
            ),
            TextSpan(
              text: 'before.',
              style: protestRiotRegular.copyWith(
                  color: AppColors.kTextColor, fontSize: 32.sp),
            )
          ]),
    ),
  },
  {
    "image": onboardingImage2,
    "background_img": onboardingScreenImage2, // Replace with your asset path
    "title": RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Easily select a service to make your house ",
          style: protestRiotRegular.copyWith(
              color: AppColors.kTextColor, fontSize: 32.sp),
          children: [
            TextSpan(
              text: 'clean. ',
              style: protestRiotRegular.copyWith(
                  color: AppColors.kPrimaryColor, fontSize: 32.sp),
            ),
          ]),
    ),
  },
  {
    "image": onboardingImage3,
    "background_img": onboardingScreenImage3, // Replace with your asset path
    "title": RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Enjoy a ",
          style: protestRiotRegular.copyWith(
              color: AppColors.kTextColor, fontSize: 32.sp),
          children: [
            TextSpan(
              text: 'hassle-free ',
              style: protestRiotRegular.copyWith(
                  color: AppColors.kPrimaryColor, fontSize: 32.sp),
            ),
            TextSpan(
              text: 'experience with trusted, insured maids.',
              style: protestRiotRegular.copyWith(
                  color: AppColors.kTextColor, fontSize: 32.sp),
            )
          ]),
    ),
  },
];
