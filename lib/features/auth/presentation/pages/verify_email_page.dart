import 'package:flutter/material.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/enum/otp_enum.dart';
import 'package:maid_service/features/auth/presentation/pages/otp_page.dart';
import 'package:maid_service/features/auth/presentation/widgets/auth_page_structure_widget.dart';
class VerifyEmailPage extends StatelessWidget {
 static const String routeName ='/verify-email';
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageStructureWidget(
      buttonText: AppStaticString.send,
      function: () {
Navigator.pushNamed(context,OtpPage.routeName, arguments: OtpEnum.verify );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        /*spacing: 12.h,*/
        children: [
          CustomText(
            text: AppStaticString.verifyEmail,
            style: poppinsSemiBold,
            fontSize: getFontSizeExtraExtraLarge(context),
          ),
          space12H,
          CustomText(
            text: AppStaticString.wellSendVerificationCode,
            style: poppinsRegular,
            fontSize: getFontSizeSemiSmall(context),
            color: AppColors.kSubTextColor,
          ),
          space12H,

          CustomTextField(
            title: AppStaticString.emailAddress,
            hintText: 'mobileip@mac.com',
          ),
          space12H,


        ],
      ),
    );
  }
}
