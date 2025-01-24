import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_container.dart';
import 'package:maid_service/core/components/custom_network_image.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/tab-bar/dynamic_tab_widget.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/profile_user_info_widget.dart';

class MaidDetailsPage extends StatelessWidget {
  static const String routeName = '/maid-details';
  const MaidDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppStaticString.details,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding16,
          child: Center(
            child: Column(
              spacing: 6.h,
              children: [
                CustomNetworkImage(
                  imageUrl: '',
                  height: 100.w,
                  width: 100.w,
                  boxShape: BoxShape.circle,
                ),
                CustomContainer(
                    backgroundColor: AppColors.kWhiteColor,
                    widget: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 6.w,
                      children: [
                        Image.asset(
                          activeSymbolIcon,
                          height: 18.w,
                        ),
                        CustomText(
                          text: AppStaticString.available,
                          style: poppinsRegular,
                          fontSize: getFontSizeSemiSmall(context),
                          color: AppColors.kSubTextColor,
                        )
                      ],
                    )),

                ///==================== dynamic name ==================///

                CustomText(
                  text: 'jenny wilson',
                  style: poppinsSemiBold,
                  fontSize: getFontSizeExtraLarge(context),
                ),

                ///==================== dynamic location ==================///

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 6.w,
                  children: [
                    Image.asset(
                      locationIcon,
                      height: 16.w,
                    ),
                    CustomText(
                      text: '	4048 Laurel St, Alaska',
                      style: poppinsRegular,
                      fontSize: getFontSizeSemiSmall(context),
                      color: AppColors.kSubTextColor,
                    )
                  ],
                ),
                space12H,
                CustomContainer(
                  widget: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ProfileUserInfoWidget(
                              icon: workIcon,
                              label: AppStaticString.totalExperience,

                              ///===================dynamic experience================///
                              value: '5+ years',
                            ),
                          ),
                          CustomHorizontalDivider(),
                          Expanded(
                            child: ProfileUserInfoWidget(
                              icon: starIcon,
                              label: AppStaticString.ratings,

                              ///===================dynamic rating================///
                              value: '5.0 (120) ',
                            ),
                          ),
                        ],
                      ),
                      CustomVerticalDivider(),
                      ProfileUserInfoWidget(
                        icon: starIcon,
                        label: AppStaticString.serviceCharge,

                        ///===================dynamic service charge================///
                        value: '\$20 per hour',
                      ),
                    ],
                  ),
                  backgroundColor: AppColors.kWhiteColor,
                  radius: 12.r,
                  padding: padding12,
                ),
                space12H,
                DynamicTabWidget(
                  tabs: [
                    AppStaticString.about,
                    AppStaticString.services,
                    AppStaticString.reviews
                  ],
                  tabContent: [CustomText(
                    text: AppStaticString.userBio,
                    style: poppinsSemiBold,
                    fontSize: getFontSizeExtraLarge(context),
                  ),CustomText(
                    text: AppStaticString.userBio,
                    style: poppinsSemiBold,
                    fontSize: getFontSizeExtraLarge(context),
                  ),CustomText(
                    text: AppStaticString.userBio,
                    style: poppinsSemiBold,
                    fontSize: getFontSizeExtraLarge(context),
                  ),],
                ),
                WhiteContainerWithShadowWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: AppStaticString.userBio,
                        style: poppinsSemiBold,
                        fontSize: getFontSizeExtraLarge(context),
                      ),
                      CustomVerticalDivider(),

                      ///=============== dynamic bio =====================///
                      CustomText(
                        text:
                            'Hi, I’m Jenny Wilson, a professional home cleaner with over 3 years of experience in delivering top-notch cleaning services. I specialize in handling all types of furniture, flooring, and even swimming pools, ensuring every surface sparkles and shines. From stubborn stains on carpets to cluttered spaces that need organizing, I take care of it all with attention to detail and a commitment to quality. My goal is to provide 100% satisfaction, making your home clean, fresh, and inviting. Let me handle the mess so you can enjoy a stress-free, spotless space!',
                        style: poppinsRegular,
                        fontSize: getFontSizeSemiSmall(context),
                        color: AppColors.kSubTextColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
