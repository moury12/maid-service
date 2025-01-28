import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';
class ProfileCardWidget extends StatelessWidget {
  final String img;
  final String title;
  final Function()? function;
  const ProfileCardWidget({
    super.key, required this.img, required this.title, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return WhiteContainerWithShadowWidget(
      isBoxShadow: false,

      ///=====================dynamic mail ======================///
      child:InkWell(
        onTap: () {

        },
        child: Row(
          spacing: 12.w,
          children: [
            Image.asset(img,height: 24.w,),
            Expanded(child: CustomText(text:title,style: poppinsRegular,)),

            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.kTextColor,size: 15.sp ,
            )
          ],),
      ),
    );
  }
}
