import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/bottom_navigation_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_grid_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';

class AddMaidInformationPage extends StatelessWidget {
  static const String routeName = '/add-info-about-maid';
  const AddMaidInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: AppStaticString.addYourInfo,),
      body: SingleChildScrollView(
        child: Container(
          margin: padding16,
          padding: padding16,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(12.r)
          ),
          child: Column(
            spacing: 12.h,
            children: [
              CustomTextField(
                title: AppStaticString.addBio,
                maxLines: 4,
                borderRadius: 8.r,
                hintText: 'Enter Your Bio',
              ),
              HomeTitleWidget(title: AppStaticString.availability,viewAll: false,
              fontSize: getFontSizeSemiSmall(context),style: poppinsMedium,),
            Wrap(
              spacing: 12.w,
              runSpacing: 12.h,
              children: List.generate(7, (index) => CustomContainerWithBorder(

                  radius:50.r ,

                  child: CustomText(text: 'Sun',style: poppinsRegular,color: AppColors.kSubTextColor,
                    textAlign: TextAlign.center,)),),
            ),
              HomeTitleWidget(title: AppStaticString.choseYourService,viewAll: false,
              fontSize: getFontSizeSemiSmall(context),style: poppinsMedium,),
              CategoryGrid(),

              CustomButton(onTap: () {
        Navigator.pushNamed(context, BottomNavigationPage.routeName);
              },
              title: AppStaticString.confirm,)
            ],
          ),
        ),
      ),
    );
  }
}
