import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16V,
      child: Row(spacing: 6.w,
        children: [
          Image.asset(notificationIcon,height: 20.w,),
          Expanded(
            child: Column(
              spacing: 6.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///======================= dynamic notification title======================///
                CustomText(
                  text: '40% Discount for carpentry service',
                  style: poppinsMedium,
                ),

                ///======================= dynamic notification subtitle======================///
                CustomText(
                  text: '40% Discount for carpentry service',
                  style: poppinsRegular,
                  color: AppColors.kSubTextColor,
                  fontSize: getFontSizeSmall(context),
                )
              ],
            ),
          ),
          Column(   spacing: 6.h,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ///======================= dynamic time ======================///

              CustomText(
                text: '10:40 AM',
                style: poppinsRegular,
                color: AppColors.kSubTextColor,
                fontSize: getFontSizeSmall(context),
              ),
              Icon(
                CupertinoIcons.circle_fill,
                color: AppColors.kPrimaryColor,
                size: 10.sp,
              )
            ],
          )
        ],
      ),
    );
  }
}
