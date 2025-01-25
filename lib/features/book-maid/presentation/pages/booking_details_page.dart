import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';
import 'package:maid_service/features/book-maid/presentation/widgets/confirm_service_content_widget.dart';
import 'package:maid_service/features/book-maid/presentation/widgets/my_location_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/home/home_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_grid_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/coin_point_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/image_with_title_content_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';

class BookingDetailsPage extends StatelessWidget {
  static const String routeName = '/book-maid';
  const BookingDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppStaticString.bookingDetails,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding16,
          child: Column(
            children: [
              MaidDetailsTabContent(
                label: AppStaticString.confirmYourService,
                child: Column(
                  spacing: 12.h,
                  children: [
                    CustomContainerWithBorder(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyLocationWidget(),
                                CustomText(
                                  maxLines: 1,
                                  text: 'New York, NY, USA',
                                  style: poppinsMedium,
                                  fontSize: getFontSizeExtraLarge(context),
                                ),
                              ],
                            ),
                          ),
                          CircleButtonWidget(
                            img: locationIcon,
                          )
                        ],
                      ),
                    ),
                    CustomContainerWithBorder(
                        child: ConfirmYourServiceContent(
                      label: AppStaticString.date,
                      icon: calenderIcon,

                      ///===================== input date time =====================///
                      subText: 'Oct 23, 202404:17 pm',
                    )),
                    Row(
                      spacing: 12.w,
                      children: [
                        Expanded(
                          child: CustomContainerWithBorder(
                              child: ConfirmYourServiceContent(
                            label: AppStaticString.startTime,
                            icon: clockIcon,

                            ///===================== input date time =====================///
                            subText: 'Oct 23, 202404:17 pm',
                          )),
                        ),
                        Expanded(
                          child: CustomContainerWithBorder(
                              child: ConfirmYourServiceContent(
                            label: AppStaticString.endTime,
                            icon: clockIcon,

                            ///===================== input date time =====================///
                            subText: 'Oct 23, 202404:17 pm',
                          )),
                        ),
                      ],
                    ),
                    HomeTitleWidget(
                      title: AppStaticString.whatServiceDoYouWant,
                      viewAll: false,
                    ),

                    /// ======================= dynamic img title===========================///

                    CategoryGrid(
                      maxCrossAxisExtent: 150.w,
                      item: CustomContainerWithBorder(
                          child: ImgWithTitleContentWidget(
                              img: '', title: 'room')),
                    ),
                    HomeTitleWidget(
                      title: AppStaticString.choseYourService,
                      viewAll: false,
                    ),

                    /// ======================= dynamic img title===========================///

                    CategoryGrid(
                      maxCrossAxisExtent: 150.w,
                      item: CustomContainerWithBorder(
                          child: ImgWithTitleContentWidget(
                              img: '', title: 'room')),
                    ),
                    Row(
                      spacing: 12.w,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: AppStaticString.total,
                              style: poppinsSemiBold.copyWith(
                                  fontSize: getFontSizeLarge(context),
                                  color: AppColors.kTextColor),
                              children: [
                                TextSpan(
                                  text: AppStaticString.inclVat,
                                  style: poppinsRegular.copyWith(
                                      fontSize: getFontSizeSemiSmall(context),
                                      color: AppColors.kSubTextColor),
                                )
                              ]),
                        ),
                        Spacer(),

                        ///=====================dynamic price========================///

                        CustomText(
                          text: '\$25',
                          style: poppinsSemiBold,
                          fontSize: getFontSizeLarge(context),
                        )
                      ],
                    ),
                    Row(
                      spacing: 6.w,
                      children: [
                      Image.asset(mermaidLogoWithText,color: AppColors.kPrimaryColor,height: 24.h,),
                        CustomText(
                          text: '\$MRMD Coin',
                          style: poppinsSemiBold,
                          fontSize: getFontSizeLarge(context),
                        ), Spacer(),

                        ///=====================dynamic price========================///

                        CoinPointWidget(point: '50',)
                      ],
                    ),
                    CustomButton(onTap: () {

                    },
                    title: AppStaticString.payNow,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
