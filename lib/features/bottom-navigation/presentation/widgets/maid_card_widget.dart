import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_container.dart';
import 'package:maid_service/core/components/custom_network_image.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/maid-details/presentation/pages/maid_details_page.dart';

class MaidCardWidget extends StatelessWidget {
  const MaidCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        ProfilePicNameWithSubtitle(
          showTrailing: true,
          showAvailability: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            4,
            (index) {
              ///===================== dynamic maid work ======================///

              return CustomContainer(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                  widget: CustomText(
                    text: index > 2 ? '02+ More' : 'Dusting',
                    style: poppinsRegular,
                    fontSize: getFontSizeSmall(context),
                    color: AppColors.kSubTextColor,
                  ));
            },
          ),
        ),
        Row(
          children: [
            Expanded(
              child: RichText(
                  text: TextSpan(
                      text: '\$20',
                      style: poppinsSemiBold.copyWith(
                          fontSize: getFontSizeExtraLarge(context),
                          color: AppColors.kPrimaryColor),
                      children: [
                    TextSpan(
                        text: ' /per hour',
                        style: poppinsRegular.copyWith(
                            fontSize: getFontSizeSmall(context),
                            color: AppColors.kSubTextColor))
                  ])),
            ),
            Expanded(
              child: CustomButton(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                onTap: () {
                  Navigator.pushNamed(context, MaidDetailsPage.routeName);
                },
                title: AppStaticString.viewDetails,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ProfilePicNameWithSubtitle extends StatelessWidget {
  final String? profilePic;
  final bool? showAvailability;
  final bool? showTrailing;
  final String? profileName;
  final String? profileSubText;
  final Color? subTextColor;
  final Widget? trailing;

  const ProfilePicNameWithSubtitle({
    super.key,
    this.showTrailing = false,
    this.profilePic,
    this.profileName,
    this.profileSubText,
    this.subTextColor,
    this.showAvailability = false, this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      children: [
        ///===================== dynamic maid image ======================///

        Stack(
          children: [
            CircularProfilePicture(profilePic: profilePic),
            showAvailability == true
                ? Positioned(
                    bottom: 2,
                    right: 2,
                    child: Image.asset(
                      activeSymbolIcon,
                      height: 8.w,
                    ),
                  )
                : SizedBox.shrink()
          ],
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///===================== dynamic maid name ======================///

              CustomText(
                text: profileName ?? 'Jenny Wilson',
                style: poppinsSemiBold,
                fontSize: getFontSizeSemiSmall(context),
              ),

              ///===================== dynamic maid exprience ======================///
              CustomText(
                text: profileSubText ?? '5${AppStaticString.yearsOfExperience}',
                style: poppinsRegular,
                color: subTextColor ?? AppColors.kSubTextColor,
                fontSize: getFontSizeSmall(context),
              )
            ],
          ),
        ),

        ///=========================dynamic rate ========================///

        showTrailing == true
            ?trailing?? RatingValueContainerWidget(
                ratingValue: '0.5',
              )
            : SizedBox.shrink()
      ],
    );
  }
}

class CircularProfilePicture extends StatelessWidget {
  const CircularProfilePicture({
    super.key,
    required this.profilePic,
  });

  final String? profilePic;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
        boxShape: BoxShape.circle,
        imageErrorUrl: dummyUserIcon,
        imageUrl: profilePic ?? '',
        height: 44.w,
        width: 44.w);
  }
}

class RatingValueContainerWidget extends StatelessWidget {
  final String? ratingValue;
  final Color? color;
  final Widget? child;
  final Function()? function;
  const RatingValueContainerWidget({
    super.key,
     this.ratingValue,
    this.color, this.child, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function?? () {

      },
      child: CustomContainer(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        backgroundColor: color ?? AppColors.kGreenColor.withOpacity(.2),
        widget:child?? Row(
          spacing: 6.w,
          children: [
            Icon(
              CupertinoIcons.star,
              color: AppColors.kGreenTextColor,
              size: 15.sp,
            ),
            CustomText(
              text: ratingValue??'0',
              style: poppinsMedium,
              fontSize: getFontSizeSmall(context),
              color: AppColors.kGreenTextColor,
            )
          ],
        ),
      ),
    );
  }
}
