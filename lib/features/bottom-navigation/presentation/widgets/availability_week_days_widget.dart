import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';

class AvailabilityWidget extends StatelessWidget {
  const AvailabilityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: List.generate(7, (index) => CustomContainerWithBorder(

          radius:50.r ,

          child: CustomText(text: 'Sun',style: poppinsRegular,color: AppColors.kSubTextColor,
            textAlign: TextAlign.center,)),),
    );
  }
}
