import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/pages/login_page.dart';
import 'package:maid_service/features/auth/presentation/pages/select_role_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';
import 'package:maid_service/features/booking-status/presentation/widgets/rating_review_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';

class HelperFunction {
  static void showSignInDialog(BuildContext context) {
    showModalBottomSheet(
      enableDrag: true,
      constraints: BoxConstraints.tightForFinite(
        /*height: MediaQuery.of(context).size.height / 2,*/
        width: MediaQuery.of(context).size.width,
      ),
      context: context,
      isScrollControlled: true, // Allows full-screen height if needed
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: padding16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 12.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppStaticString.signInButton,
                  style: poppinsSemiBold,
                  fontSize: getButtonFontSizeLarge(context),
                ),
                CustomText(
                  text: AppStaticString.signInMsg,
                  style: poppinsRegular,
                  color: AppColors.kSubTextColor,
                  fontSize: getFontSizeSemiSmall(context),
                ),
                space16H,

                ///==================== social media login ===========================///

                CustomButton(
                  onTap: () {},
                  img: appleIcon,
                  fillColor: Colors.transparent,
                  borderColor: AppColors.kGreyBorderColor,
                  child: Row(
                    spacing: 12.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        appleIcon,
                        height: 23.w,
                      ),
                      CustomText(
                        text: AppStaticString.continueAppleButton,
                        style: poppinsSemiBold,
                        fontSize: getFontSizeLarge(context),
                      )
                    ],
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  img: appleIcon,
                  fillColor: Colors.transparent,
                  borderColor: AppColors.kGreyBorderColor,
                  child: Row(
                    spacing: 12.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        goggleIcon,
                        height: 23.w,
                      ),
                      CustomText(
                        text: AppStaticString.continueGoogleButton,
                        style: poppinsSemiBold,
                        fontSize: getFontSizeLarge(context),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.5,
                        color: AppColors.kGreyBorderColor,
                      ),
                    ),
                    Padding(
                      padding: padding12H,
                      child: CustomText(
                        text: AppStaticString.or,
                        style: poppinsSemiBold,
                        fontSize: getFontSizeLarge(context),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.5,
                        color: AppColors.kGreyBorderColor,
                      ),
                    ),
                  ],
                ),

                ///====================== sign in email=================///

                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, LoginPage.routeName);
                  },
                  title: AppStaticString.signInWithEmail,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: AppStaticString.donotHaveAccButton,
                      style: poppinsRegular,
                      fontSize: getFontSizeSemiSmall(context),
                    ),
                    CustomTextButton(
                      text: AppStaticString.signUpButton,
                      onPressed: () {
                        Navigator.pushNamed(context, SelectRolePage.routeName);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<dynamic> customDialogWidget(BuildContext context,
      {required String title,
      required Widget child,
       Function()? function,
      Widget? button}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        content: Padding(
          padding: padding12,
          child: Column(
            spacing: 12.h,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleButtonWidget(
                    iconSize: 20.sp,
                    icon: CupertinoIcons.multiply,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: CustomText(
                      textAlign: TextAlign.center,
                      text: title,
                      style: poppinsSemiBold,
                      fontSize: getFontSizeExtraLarge(context),
                    ),
                  ),
                  space24W
                ],
              ),
              CustomVerticalDivider(),
              child,
              button ??
                  CustomButton(
                    onTap: function??(){},
                    title: AppStaticString.submit,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
