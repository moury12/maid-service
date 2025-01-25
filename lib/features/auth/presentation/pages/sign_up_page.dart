import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/enum/otp_enum.dart';
import 'package:maid_service/features/auth/presentation/pages/login_page.dart';
import 'package:maid_service/features/auth/presentation/pages/verify_email_page.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = '/sign-up';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppbar(),
      body: Padding(
        padding: padding16,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12.h,
                  children: [
                    CustomText(
                      text: AppStaticString.signUpButton,
                      style: poppinsSemiBold,
                      fontSize: getFontSizeExtraExtraLarge(context),
                    ),
                    CustomText(
                      text: AppStaticString.weMayStore,
                      style: poppinsRegular,
                      fontSize: getFontSizeSemiSmall(context),
                      color: AppColors.kSubTextColor,
                    ),
                    CustomTextField(
                      title: AppStaticString.fullName,
                    ),
                    CustomTextField(
                      title: AppStaticString.emailAddress,
                    ),
                    CustomTextField(
                      title: AppStaticString.phoneNumber,
                    ),
                    CustomTextField(
                      title: AppStaticString.password,
                      isPassword: true,
                      hintText: '******',
                    ),
                    CustomTextField(
                      title: AppStaticString.confirmPass,
                      isPassword: true,
                      hintText: '******',
                    ),
                    space12H
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ///===================send otp =====================///

                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, VerifyEmailPage.routeName,
                        arguments: OtpEnum.signIn);
                    // Navigator.pushNamed(context, OtpPage.routeName,
                    //     arguments: OtpEnum.signIn);
                  },
                  title: AppStaticString.continueButton,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: AppStaticString.alreadyHaveAnAcc,
                      style: poppinsRegular,
                      color: AppColors.kSubTextColor,
                    ),
                    CustomTextButton(
                      text: AppStaticString.signInButton,
                      onPressed: () {
                        Navigator.pushNamed(context,
                            LoginPage.routeName);
                      },
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
