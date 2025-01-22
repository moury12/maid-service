import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/helpers/helper_function.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/onboarding/initial_onboarding_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/widgets/onboarding_widget.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(
        backgroundImg: splashBackgroundImage,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).viewPadding.top,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: padding16,
                child: Column(
                  children: [
                    Expanded(child: SizedBox.shrink()),
                    Expanded(
                        flex: 2,
                        child: Column(
                          spacing: 6.h,
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
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 16.h,
                          children: [
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: 'Welcome to ',
                                    children: [
                                      TextSpan(
                                          text: 'merMaid!',
                                          style: protestRiotRegular.copyWith(
                                              color: AppColors.kYellowColor,
                                              fontSize:
                                                  getFontSizeExtraExtraLarge(
                                                      context))),
                                      TextSpan(
                                          text:
                                              ' Quality cleaning tailored to your needs.',
                                          style: protestRiotRegular.copyWith(
                                              color: AppColors.kWhiteColor,
                                              fontSize:
                                                  getFontSizeExtraExtraLarge(
                                                      context))),
                                    ],
                                    style: protestRiotRegular.copyWith(
                                        color: AppColors.kWhiteColor,
                                        fontSize: getFontSizeExtraExtraLarge(
                                            context)))),
                            CustomButton(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, InitialOnboardingPage.routeName);
                              },
                              title: AppStaticString.continueButton,
                            ),
                            CustomTextButton(
                              text: AppStaticString.signInButton,
                              textColor: AppColors.kWhiteColor,
                              onPressed: () {
                                HelperFunction.showSignInDialog(context);
                              },
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
