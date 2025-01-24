import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_item_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding16,
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
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                ///==================== category icon ======================///
                return CategoryItemCard();
              },
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 110.w,
                  mainAxisSpacing: 8.w,
                  crossAxisSpacing: 8.w),
            ),
            HomeTitleWidget(
              ///===================== show list of maid screen ======================///

              function: () {},
              title: AppStaticString.recommendMaids,
            ),
            ListView.builder(
padding: EdgeInsets.zero,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => Padding(
                padding: padding6V,
                child: WhiteContainerWithShadowWidget(
                  child: MaidCardWidget(),
                ),
              ),
              itemCount: 5,
            )
          ],
        ),
      ),
    );
  }
}

