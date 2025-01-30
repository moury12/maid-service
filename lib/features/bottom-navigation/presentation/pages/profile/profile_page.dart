import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/helpers/helper_function.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/premium_mermaids_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/profile_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

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
                    HelperFunction.customDialogWidget(context,
                        title: '${AppStaticString.bookingId}:K1810B001',
                        child: Column(
                          children: [

                          ],
                        ),
                        button: CustomButton(
                          onTap: () {},
                          title: AppStaticString.canceled,
                          textColor: AppColors.kPrimaryColor,
                          fillColor: AppColors.kPrimaryColor.withOpacity(.1),
                          borderColor: AppColors.kPrimaryColor,
                        ));
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
              function: () {},
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

