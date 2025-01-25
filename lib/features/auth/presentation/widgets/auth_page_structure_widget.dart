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
class AuthPageStructureWidget extends StatelessWidget {
  const AuthPageStructureWidget({
    super.key,
     this.routeName, this.child, this.buttonText, this.function,
  });

  final String? routeName;
  final String? buttonText;
  final Function()? function;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppbar(),
      body: Padding(
        padding: padding16,
        child: Column(
          children: [
            Expanded(
              child:SingleChildScrollView(child: child??SizedBox.shrink()) ,
            ),
            CustomButton(
              onTap:function?? () {
                Navigator.pushNamed(context,routeName??'');
              },
              title:buttonText?? AppStaticString.continueButton,
            )
          ],
        ),
      ),
    );
  }
}
