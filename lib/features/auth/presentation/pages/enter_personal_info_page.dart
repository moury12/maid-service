import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/pages/enter_home_address_info.dart';
import 'package:maid_service/features/auth/presentation/widgets/auth_page_structure_widget.dart';

class EnterPersonalInfoPage extends StatelessWidget {
  static const String routeName = '/personal-info';
  const EnterPersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageStructureWidget(
      routeName: EnterHomeAddressInfoPage.routeName,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12.h,
        children: [
          CustomText(
            text: AppStaticString.nameAsId,
            style: poppinsSemiBold,
            fontSize: getFontSizeExtraExtraLarge(context),
          ),
          CustomText(
            text: AppStaticString.weNeedThisInformation,
            style: poppinsRegular,
            fontSize: getFontSizeSemiSmall(context),
            color: AppColors.kSubTextColor,
          ),
          CustomTextField(
            title: AppStaticString.name,
            hintText: 'Full Name',
            prefixIcon: Icon(
              Icons.perm_identity,
              color: AppColors.kSubTextColor,
            ),
          ),
          CustomTextField(
            title: AppStaticString.dateOfBirth,
            hintText: 'MM/DD/YY',
            suffixIcon: Icon(
              Icons.calendar_today_outlined,
              color: AppColors.kSubTextColor,
            ),
          ),
          space12H,
        ],
      ),
    );
  }
}
