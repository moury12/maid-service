import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/helpers/helper_function.dart';
import 'package:maid_service/features/book-maid/presentation/widgets/mermaid_coin_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/home/client/all_maid_list_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_item_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/premium_mermaids_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';

class HomeMaidPage extends StatelessWidget {
  const HomeMaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding16,
        child: Column(
          children: [
            PremiumMermaidsWidget(
              widget: Padding(
                padding: padding12,
                child: Row(
                  spacing: 12.w,
                  children: [
                    Image.asset(
                      mermaidGuidLine,
                      height: 48.w,
                    ),
                    Expanded(
                        child: CustomText(
                      text: AppStaticString.stuckOnWhere,
                      style: poppinsRegular,
                    ))
                  ],
                ),
              ),
            ),
            HomeTitleWidget(
              title: AppStaticString.serviceRequest,
              function: () {
                Navigator.pushNamed(context, AllMaidListPage.routeName,
                    arguments: 'Maid');
              },
            ),
            ...List.generate(
              5,
              (index) => Padding(
                padding: padding6V,
                child: WhiteContainerWithShadowWidget(
                  child: MaidCardWidget(
                    function: () {
                      HelperFunction.customDialogWidget(

                        context,
                        buttonTitle: AppStaticString.acceptServiceRequest,
                        title: AppStaticString.confirmYourService,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12.h,
                          children: [
                            CustomContainerWithBorder(
                                child: ProfilePicNameWithSubtitle(
                              profileName: AppStaticString.maidNeeded,
                              profileSubText: 'dummy client name',
                            )),
                            CustomContainerWithBorder(
                                child: Column(
                              children: [
                                Row(
                                  spacing: 4.w,
                                  children: [
                                    Image.asset(
                                      locationIcon,
                                      height: 16.w,
                                    ),
                                    CustomText(
                                      text: AppStaticString.workLocation,
                                      color: AppColors.kSubTextColor,
                                    )
                                  ],
                                ),
                                CustomText(
                                    style: poppinsMedium,
                                    text:
                                        'Flat 5B, Room 12, 123 Main Street, New York')
                              ],
                            )),
                            CustomVerticalDivider(),
                            HomeTitleWidget(
                              title: AppStaticString.serviceCategory,
                              viewAll: false,
                            ),
                            CategoryItemCard(),
                            CustomContainerWithBorder(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HomeTitleWidget(
                                  title: AppStaticString.serviceCategory,
                                  viewAll: false,
                                ),
                                CategoryItemCard(),
                              ],
                            )),
                            MermaidCoinWidget()
                          ],
                        ),
                      );
                    },
                    fromMaid: true,
                    description: AppStaticString.dummyDesc,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
