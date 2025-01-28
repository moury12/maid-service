import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_container.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/profile_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding16,
        child: Column(
          spacing: 12.h,
          children: [
            WhiteContainerWithShadowWidget(
              isBoxShadow: false,

              ///=====================dynamic mail ======================///
              child: ProfilePicNameWithSubtitle(
                profileSubText: 'floydmiles@gmail.com',
                showTrailing: true,
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.kTextColor,
                ),
              ),
            ),
            CustomContainer(
                backgroundColor: AppColors.kYellowColor,
                radius: 12.r,
                padding: padding12H,
                widget: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: AppStaticString.mermaidsPremium,
                          style: poppinsSemiBold,
                          fontSize: getFontSizeExtraLarge(context),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.multiply))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomText(
                            text: AppStaticString.getProMaids,
                            style: poppinsRegular,
                          ),
                        ),
                        Image.asset(
                          mermaidPremiumImage,
                          height: 52.w,
                        )
                      ],
                    ),
                    CustomButton(
                      onTap: () {},
                      fillColor: AppColors.kWhiteColor,
                      borderColor: AppColors.kWhiteColor,
                      textColor: AppColors.kTextColor,
                      title: '${AppStaticString.upgradeFrom} \$44',
                    ),
                    space12H
                  ],
                )),
            HomeTitleWidget(
              title: AppStaticString.settings,
              viewAll: false,
            ),
            ProfileCardWidget(
              img: paymentIcon,
              title: AppStaticString.paymentMethods,
              function: () {},
            ),
            ProfileCardWidget(
              img: notificationIcon,
              title: AppStaticString.notification,
              function: () {},
            ),
            HomeTitleWidget(
              title: AppStaticString.others,
              viewAll: false,
            ),
            ProfileCardWidget(
              img: termsIcon,
              title: AppStaticString.termsAndCondition,
              function: () {},
            ),
            ProfileCardWidget(
              img: privacyIcon,
              title: AppStaticString.privacyPolicy,
              function: () {},
            ),
            ProfileCardWidget(
              img: helpIcon,
              title: AppStaticString.helpSupport,
              function: () {},
            ),
            ProfileCardWidget(
              img: logoutIcon,
              title: AppStaticString.logOut,
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
