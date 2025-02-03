import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/bottom_navigation_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/availability_week_days_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_grid_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';

class AddMaidInformationPage extends StatelessWidget {
  static const String routeName = '/add-info-about-maid';
  const AddMaidInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? arg = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: true,
        title:arg!=null&&arg=='edit'?AppStaticString.editProfile: AppStaticString.addYourInfo,),
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
              arg!=null&&arg=='edit'?Column(
                spacing: 16.h,
                children: [
                  Stack(
                    children: [
                      CircularProfilePicture(
                        profilePic: '',
                        height: 80.w,
                      ),
                      Positioned(
                          bottom: -10.h,
                          right: -10.w,
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              addPictureIcon,
                              height: 32.w,
                            ),
                          ))
                    ],
                  ),
                  CustomVerticalDivider(),
                  CustomTextField(
                    title: AppStaticString.name,
                  ),
                  CustomTextField(
                    title: AppStaticString.emailAddress,
                  ),
                  CustomTextField(
                    title: AppStaticString.phoneNumber,
                  ),
                ],
              ):SizedBox.shrink(),
              CustomTextField(
                title: AppStaticString.addBio,
                maxLines: 4,
                borderRadius: 8.r,
                hintText: 'Enter Your Bio',
              ),
              HomeTitleWidget(title: AppStaticString.availability,viewAll: false,
              fontSize: getFontSizeSemiSmall(context),style: poppinsMedium,),
            AvailabilityWidget(),
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

