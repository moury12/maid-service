import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_container.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';

class CustomContainerWithBorder extends StatelessWidget {
  final Widget child;
  final Function()? function;
  const CustomContainerWithBorder({
    super.key,
    required this.child,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      borderWidth: 2,
      borderColor: AppColors.kButtonBackgroundColor,
      radius: 12.r,
      backgroundColor: AppColors.kWhiteColor,
      widget: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: AppColors.kButtonBackgroundColor,
            onTap: function ?? () {}, child: child),
      ),
    );
  }
}

class MaidDetailsTabContent extends StatelessWidget {
  final String label;
  final Widget? child;
  const MaidDetailsTabContent({
    super.key,
    required this.label,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return WhiteContainerWithShadowWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: label,
            style: poppinsSemiBold,
            fontSize: getFontSizeExtraLarge(context),
          ),
          CustomVerticalDivider(),

          ///=============== dynamic bio =====================///
          child ??
              CustomText(
                text:
                    'Hi, I’m Jenny Wilson, a professional home cleaner with over 3 years of experience in delivering top-notch cleaning services. I specialize in handling all types of furniture, flooring, and even swimming pools, ensuring every surface sparkles and shines. From stubborn stains on carpets to cluttered spaces that need organizing, I take care of it all with attention to detail and a commitment to quality. My goal is to provide 100% satisfaction, making your home clean, fresh, and inviting. Let me handle the mess so you can enjoy a stress-free, spotless space!',
                style: poppinsRegular,
                fontSize: getFontSizeSemiSmall(context),
                color: AppColors.kSubTextColor,
              )
        ],
      ),
    );
  }
}
