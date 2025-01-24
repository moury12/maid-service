import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';

class HomeTitleWidget extends StatelessWidget {
  final String title;
  final bool? viewAll;
  final Function()? function;
  const HomeTitleWidget(
      {super.key, required this.title, this.viewAll=true, this.function});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.w,
      children: [
        Expanded(
          child: CustomText(
            text: title,
            style: poppinsSemiBold,
            fontSize: getFontSizeExtraLarge(context),
          ),
        ),
        viewAll == true
            ? CustomTextButton(
                padding: EdgeInsets.zero,
                text: AppStaticString.viewAll,
                onPressed: function ?? () {},
              )
            : SizedBox.shrink()
      ],
    );
  }
}
