import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_button.dart';
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
import 'package:maid_service/features/book-maid/presentation/pages/booking_details_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/home/home_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_grid_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/image_with_title_content_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';
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
                      CustomVerticalDivider(padding: padding12V,),
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

                DynamicTabWidget(
                  tabs: [
                    AppStaticString.about,
                    AppStaticString.services,
                    AppStaticString.reviews
                  ],

                  ///========================== Tab content =========================///

                  tabContent: [
                    MaidDetailsTabContent(
                      label: AppStaticString.userBio,
                    ),
                    MaidDetailsTabContent(
                      label: AppStaticString.services,
                      child: CategoryGrid(
                        maxCrossAxisExtent: 150.w,
                        item: CustomContainerWithBorder(
                          /// ======================= dynamic img title===========================///
                          child: ImgWithTitleContentWidget(title: 'full house',
                          img: '',),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 12.w,
                        children: [
                          ...List.generate(
                            4,
                            (index) => CustomContainer(
                                padding: padding12,
                                radius: 16.r,
                                width: MediaQuery.of(context).size.width / 1.5,
                                backgroundColor: AppColors.kWhiteColor,
                                widget: Column(
                                  spacing: 12.h,
                                  children: [
                                    ProfilePicNameWithSubtitle(
                                      showAvailability: false,
                                      showTrailing: false,

                                      ///========================= dynamic profile details===================///
                                      profileSubText: 'founder, fresh shpw',
                                    ),

                                    ///=================== dynamic comment Text ===================///

                                    CustomText(
                                      text:
                                          'Hi, I’m Jenny Wilson, a professional home cleaner with over 3 years of experience in delivering top-notch cleaning services. I specialize in handling all types of furniture, flooring, and even swimming pools, ensuring every surface sparkles and shines. From stubborn stains on carpets to cluttered spaces that need organizing, I take care of it all with attention to detail and a commitment to quality. My goal is to provide 100% satisfaction, making your home clean, fresh, and inviting. Let me handle the mess so you can enjoy a stress-free, spotless space!',
                                      style: poppinsMedium,
                                      fontSize: getFontSizeSmall(context),
                                    ),
                                    Row(
                                      children: [
                                        ///======================== dynamic rating=================///

                                        Icon(
                                          Icons.star,
                                          color: AppColors.kTextColor,
                                          size: 15.sp,
                                        ),
                                        CustomText(
                                          text: '5.0',
                                          style: poppinsMedium,
                                          fontSize:
                                              getFontSizeSemiSmall(context),
                                        ),
                                        Spacer(),

                                        ///======================== dynamic rating date=================///

                                        CustomText(
                                          text: 'october 18, 2024',
                                          style: poppinsRegular,
                                          color: AppColors.kSubTextColor,
                                          fontSize: getFontSizeSmall(context),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                space12H,

                ///======================== book now maid =================///

                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, BookingDetailsPage.routeName);
                  },

                  ///=================== dynamic price==================///
                  title: '${AppStaticString.bookNowFor} \$20/hr',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

