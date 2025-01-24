import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/padding_constant.dart';

class WhiteContainerWithShadowWidget extends StatelessWidget {
  final Widget? child;
  const WhiteContainerWithShadowWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding12,
      decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
                color: Color(0xff101828).withOpacity(.1),
                spreadRadius: 0,
                blurRadius: 2)
          ]),
      child: child,
    );
  }
}
