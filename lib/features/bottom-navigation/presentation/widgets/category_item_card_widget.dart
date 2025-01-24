import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';
class CategoryItemCard extends StatelessWidget {
  const CategoryItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WhiteContainerWithShadowWidget(
      child: Column(
        spacing: 4.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            dummyCatIcon,
            height: 24.w,
          ),
          FittedBox(
            child: CustomText(
              text: 'Full House',

              style: poppinsMedium,
              color: AppColors.kSubTextColor,
              fontSize: getFontSizeSemiSmall(context),
            ),
          )
        ],
      ),
    );
  }
}