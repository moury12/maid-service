import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_circular_progress.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

class HistoryListWidget extends StatelessWidget {
  final double? value;
  final Function()? function;

  const HistoryListWidget({
    super.key,  this.value, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: List.generate(
        5,
        (index) => HistoryCardWidget(value:value ,function: function,),
      ),
    );
  }
}

class HistoryCardWidget extends StatelessWidget {
  final double? value;
  final Function()? function;
  const HistoryCardWidget({
    super.key,  this.value, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return WhiteContainerWithShadowWidget(
padding: EdgeInsets.zero,
      child: Material(
        color: Colors.transparent,
        child: InkWell(

          splashColor: AppColors.kButtonBackgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          onTap:function?? () {

          },
          child: Padding(
            padding: padding16,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6.h,
                    children: [CustomText(
                      text: AppStaticString.generalCleaning,
                      style: poppinsSemiBold,
                      fontSize: getFontSizeLarge(context),
                    ),
                      CustomText(
                        text: '${AppStaticString.bookingId}: hjgghkghk',
                        style: poppinsRegular,
                        color: AppColors.kSubTextColor,
                      ),
                      SubTextWithIcon(),
                      SubTextWithIcon(
                        icon: profileIcon,
                        text: '${AppStaticString.assignTo} dfsfsdgfdg',
                      ),
                    ],
                  ),
                ),
            value!=null?    CustomCircularProgress(
                  value:value??0,
                  progressColor: AppColors.kGreenTextColor,
                  size: 100.0,

                ):SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubTextWithIcon extends StatelessWidget {
  final String? icon;
  final String? text;
  const SubTextWithIcon({
    super.key,
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.w,
      children: [
        Image.asset(
          icon ?? calenderIcon,
          height: 18.w,
        ),
        CustomText(
          text: text ?? '30 Oct, 2024 at 10:00 AM',
          style: poppinsRegular,
          color: AppColors.kSubTextColor,
        ),
      ],
    );
  }
}
