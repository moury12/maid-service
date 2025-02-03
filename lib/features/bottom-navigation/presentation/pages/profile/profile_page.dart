import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/helpers/helper_function.dart';
import 'package:maid_service/core/hive-boxes/hive_boxes.dart';
import 'package:maid_service/core/utils/static_variables.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/profile/add_maid_information_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/availability_week_days_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/premium_mermaids_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/profile_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';
import 'package:maid_service/features/maid-earnings/presentation/pages/maid_earnings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding16,
        child: Column(
          spacing: 12.h,
          children: [
            WhiteContainerWithShadowWidget(
              isBoxShadow: false,

              ///=====================dynamic mail ======================///
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12.r),
                  onTap: () {
                    if(HiveBoxes.getSelectedRole().get(selectedRole)=='Maid'){
                      Navigator.pushNamed(context, AddMaidInformationPage.routeName, arguments: 'edit');
                    }else{
                    HelperFunction.customDialogWidget(context,
                        title: AppStaticString.editProfile,
                        child: Column(
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
                        ),
                        button: CustomButton(
                          onTap: () {},
                          title: AppStaticString.updateProfile,
                        ));}
                  },
                  child: ProfilePicNameWithSubtitle(
                    profileSubText: 'floydmiles@gmail.com',
                    showTrailing: true,
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.kTextColor,
                    ),
                  ),
                ),
              ),
            ),
            PremiumMermaidsWidget(),
            HomeTitleWidget(
              title: AppStaticString.settings,
              viewAll: false,
            ),
            HiveBoxes.getSelectedRole().get(selectedRole) == 'Maid'
                ? ProfileCardWidget(
                    img: availabilityIcon,
                    title: AppStaticString.availability,
                    function: () {
                      HelperFunction.customDialogWidget(context,
                          title: AppStaticString.availability,
                          buttonTitle: AppStaticString.updateAvailability,
                          child: AvailabilityWidget());
                    },
                  )
                : SizedBox.shrink(),
            HiveBoxes.getSelectedRole().get(selectedRole) == 'Maid'
                ? ProfileCardWidget(
                    img: earningsIcon,
                    title: AppStaticString.earnings,
                    function: () {
                      Navigator.pushNamed(context, MaidEarningsPage.routeName);
                    },
                  )
                : SizedBox.shrink(),
            ProfileCardWidget(
              img: paymentIcon,
              title: AppStaticString.paymentMethods,
              function: () {},
            ),
            ProfileCardWidget(
              img: notificationIcon,
              title: AppStaticString.notification,
              function: () {},
            ),
            HomeTitleWidget(
              title: AppStaticString.others,
              viewAll: false,
            ),
            ProfileCardWidget(
              img: termsIcon,
              title: AppStaticString.termsAndCondition,
              function: () {},
            ),
            ProfileCardWidget(
              img: privacyIcon,
              title: AppStaticString.privacyPolicy,
              function: () {},
            ),
            ProfileCardWidget(
              img: helpIcon,
              title: AppStaticString.helpSupport,
              function: () {
                HelperFunction.customDialogWidget(
                  context,
                  title: AppStaticString.forSupportedMail,
                  child: CustomTextField(
                    hintText: 'jennywilson@gmail.com',
                    suffixIcon: Padding(
                      padding: padding12,
                      child: Image.asset(
                        copyIcon,
                        height: 20.w,
                      ),
                    ),
                  ),
                );
              },
            ),
            ProfileCardWidget(
              img: logoutIcon,
              title: AppStaticString.logOut,
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
