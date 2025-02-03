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
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';
class PremiumMermaidsWidget extends StatelessWidget {
  final Widget? widget;
  const PremiumMermaidsWidget({
    super.key, this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        backgroundColor: AppColors.kYellowColor,
        radius: 12.r,
        padding: padding12H,
        widget:widget?? Column(
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
        ));
  }
}
class FilterButtonContainer extends StatelessWidget {
  final String title;
  final String? icon;
  final Function()? function;
  const FilterButtonContainer({
    super.key,
    required this.title,
    this.icon,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithBorder(
        function: function,
        borderColor: AppColors.kGreyBorderColor,
        radius: 50.r,
        child: Row(
          spacing: 8.w,
          children: [
            CustomText(text: title),
            Image.asset(
              icon ?? filterIcon,
              height: 16.w,
            )
          ],
        ));
  }
}