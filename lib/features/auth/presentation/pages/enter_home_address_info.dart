import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/pages/login_page.dart';
import 'package:maid_service/features/auth/presentation/widgets/auth_page_structure_widget.dart';

class EnterHomeAddressInfoPage extends StatelessWidget {
  static const String routeName = '/home-info';
  const EnterHomeAddressInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageStructureWidget(
        function: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12.h,
          children: [
            CustomText(
              text: AppStaticString.homeAddress,
              style: poppinsSemiBold,
              fontSize: getFontSizeExtraExtraLarge(context),
            ),
            CustomText(
              text: AppStaticString.pleaseEnterYourHomeAddress,
              style: poppinsRegular,
              fontSize: getFontSizeSemiSmall(context),
              color: AppColors.kSubTextColor,
            ),
            CustomTextField(
              title: AppStaticString.zipCode,
            ),
            CustomTextField(
              title: AppStaticString.streetName,
              hintText: 'E.g.: 1 St Andrew\'s Rd, National Gallery Singapore',
            ),
            space12H,
          ],
        ));
  }
}
