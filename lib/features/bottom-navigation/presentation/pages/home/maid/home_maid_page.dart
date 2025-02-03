import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/premium_mermaids_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

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
            ),
            ...List.generate(
              5,
              (index) => Padding(
                padding: padding6V,
                child: WhiteContainerWithShadowWidget(
                  child: MaidCardWidget(
                    fromMaid: true,
                    description:
                        'We are looking for a responsible and detail-oriented Maid/Housekeeper to join our team ',
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
