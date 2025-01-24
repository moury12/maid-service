import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';
class ProfileUserInfoWidget extends StatelessWidget {
  final String icon;
  final String label;
  final String value;
  const ProfileUserInfoWidget({
    super.key, required this.icon, required this.label, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.w,
      children: [
        CircleButtonWidget(
          img: icon,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: label,
                style: poppinsRegular,
                fontSize: getFontSizeSmall(context),
                color: AppColors.kSubTextColor,
              ),
              CustomText(
                text: value,
                style: poppinsMedium,
                fontSize: getFontSizeSemiSmall(context),
              )
            ],
          ),
        )
      ],
    );
  }
}
