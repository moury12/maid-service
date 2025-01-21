import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


double getFontSizeSmall(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 15.sp : 12.sp;

double getFontSizeSemiSmall(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 15.sp : 13.sp;

double getFontSizeDefault(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 17.sp : 14.sp;

double getFontSizeLarge(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 20.sp : 16.sp;

double getFontSizeExtraLarge(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 20.sp : 18.sp;

double getButtonFontSize(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 26.sp : 20.sp;

double getButtonFontSizeLarge(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 30.sp : 24.sp;
double getFontSizeExtraExtraLarge(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 32.sp : 32.sp;

double getFontSizeOverLarge(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 ? 56.sp : 46.sp;

double getFontSizeForReview(BuildContext context) => 36.sp;

