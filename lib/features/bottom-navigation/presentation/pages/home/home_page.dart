import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              spacing: 16.h,
              children: [
                CustomTextField(
                  hintText: AppStaticString.findTrustedMaids,
                  prefixIcon: Padding(
                    padding: padding12,
                    child: Image.asset(searchIcon, height: 20.w),
                  ),
                ),
                HomeTitleWidget(
                  viewAll: false,
                  title: AppStaticString.whatServiceDoYouWant,
                ),
                Expanded(
                  child: GridView.builder(
            
                    physics: NeverScrollableScrollPhysics(),
            
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      ///==================== category icon ======================///
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
                    },
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 110.w,
                        mainAxisSpacing: 8.w,
                        crossAxisSpacing: 8.w),
                  ),
                ),
                HomeTitleWidget(
                  ///===================== show list of maid screen ======================///
            
                  function: () {},
                  title: AppStaticString.recommendMaids,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
