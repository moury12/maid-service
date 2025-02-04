import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/coin_point_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';
class TransectionHistoryWidget extends StatelessWidget {
  final bool? fromMermaidCoin;
  const TransectionHistoryWidget({
    super.key,
    this.fromMermaidCoin = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding4V,
      child: CustomContainerWithBorder(
          borderColor: AppColors.kFadeWhiteColor,
          child: Row(
            spacing: 12.w,
            children: [
              CircularProfilePicture(profilePic: ''),
              Expanded(
                child: Column(
                  spacing: 6.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Brooklyn Simmons',
                      style: poppinsMedium,
                      fontSize: getFontSizeLarge(context),
                    ),
                    fromMermaidCoin == false
                        ? CustomText(
                      text: 'Via Stripe',
                      style: poppinsRegular,
                      color: AppColors.kSubTextColor,
                      fontSize: getFontSizeSmall(context),
                    )
                        : Row(
                      children: [
                        Image.asset(
                          mermaidLogoWithText,
                          color: AppColors.kPrimaryColor,
                          height: 16.h,
                        ),
                        CustomText(
                          text: AppStaticString.mrmdCoin,
                          style: poppinsMedium,
                          fontSize: getFontSizeExtraSmall(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              fromMermaidCoin == false
                  ? CustomText(
                text: '80 USD',
                style: poppinsMedium,
                fontSize: getFontSizeLarge(context),
              )
                  : CoinPointWidget(
                point: '50',
              )
            ],
          )),
    );
  }
}