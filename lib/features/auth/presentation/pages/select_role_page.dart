import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/utils/static_json.dart';
import 'package:maid_service/features/auth/presentation/pages/sign_up_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/widgets/onboarding_widget.dart';

class SelectRolePage extends StatelessWidget {
  static const String routeName = '/select-role';
  const SelectRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(
        backgroundImg: onboardingScreenImage1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top,
            ),
            Padding(
              padding: padding16,
              child: Image.asset(
                mermaidLogoWithText,
                height: 42.h,
              ),
            ),
            space8H,
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: padding16H,
                child: Image.asset(
                  /* onboardingData[index]["image"],*/
                  onboardingImage4,
                  height: 400.h,
                ),
              ),
            )),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: AppColors.kWhiteColor),
              child: Padding(
                padding: padding16,
                child: Column(
                  spacing: 12.h,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Find your perfect maid ",
                          style: protestRiotRegular.copyWith(
                              color: AppColors.kTextColor, fontSize: 32.sp),
                          children: [
                            TextSpan(
                              text: 'in minutes!',
                              style: protestRiotRegular.copyWith(
                                  color: AppColors.kPrimaryColor,
                                  fontSize: 32.sp),
                            ),
                          ]),
                    ),
                    CustomText(
                      text: AppStaticString.fromDeepCleaning,
                      textAlign: TextAlign.center,
                    ),
                    CustomButton(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpPage.routeName);
                      },
                      img: findMaidIcon,
                      title: AppStaticString.findMaid,
                    ),
                    CustomButton(
                      fillColor: AppColors.kWhiteColor,
                      imgIconColor: AppColors.kPrimaryColor,
                      textColor: AppColors.kPrimaryColor,
                      borderColor: AppColors.kPrimaryColor,
                      onTap: () {
                        Navigator.pushNamed(context, SignUpPage.routeName);
                      },
                      img: becomeMaidIcon,
                      title: AppStaticString.becomeAMaid,
                    ),
                    space16H,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
