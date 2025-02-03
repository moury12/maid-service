import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/coin_point_widget.dart';

class MermaidCoinWidget extends StatelessWidget {
  const MermaidCoinWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
