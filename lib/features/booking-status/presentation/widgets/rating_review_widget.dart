import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';
class RatingReviewWidget extends StatelessWidget {
  const RatingReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 12.h, children: [
      CustomText(
        text: AppStaticString.howWouldYouRate,
        style: poppinsSemiBold,
        fontSize: getFontSizeLarge(context),
      ),
      RatingBar(
        itemCount: 5,
        itemSize: 24.sp,
        initialRating: 2.5,
        itemPadding: padding6H,
        ratingWidget: RatingWidget(
            full: Image.asset(fullStarIcon),
            half: Image.asset(halfStarIcon),
            empty: Image.asset(emptyStarIcon)),
        allowHalfRating: true,
        onRatingUpdate: (value) {},
      ),
      CustomVerticalDivider(),
      CustomTextField(
        borderRadius: 12.r,
        isRequired: true,
        title: AppStaticString.review,
        hintText: AppStaticString.enterYourReview,
        maxLines: 3,
      ),
    ]);
  }
}
