import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/splash-onboarding/presentation/widgets/onboarding_widget.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      backgroundImg: splashBackgroundImage,
      child: Column(
        children: [
          Expanded(child: SizedBox.shrink()),
          Expanded(
              child: Column(
            children: [
              Image.asset(
                mermaidLogo,
                height: 80.w,
              ),
              Image.asset(
                mermaidTextLogo,
                height: 32.h,
              )
            ],
          )),
          Expanded(
              child: Column(
              /*  crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,*/
            children: [
              RichText(  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Welcome to ',
                      children: [
                        TextSpan(text:'merMaid!',style: protestRiotRegular.copyWith(
                            color: AppColors.kYellowColor,

                            fontSize: getFontSizeExtraExtraLarge(context)) ),
                        TextSpan(text:'Quality cleaning tailored to your needs.',style: protestRiotRegular.copyWith(
                            color: AppColors.kWhiteColor,
                            fontSize: getFontSizeExtraExtraLarge(context)) ),
                      ],
                      style: protestRiotRegular.copyWith(
                          color: AppColors.kWhiteColor,
                          fontSize: getFontSizeExtraExtraLarge(context)))),

              CustomButton(onTap: () {

              },
              title: AppStaticString.continueButton,)
            ],
          ))
        ],
      ),
    );
  }
}
