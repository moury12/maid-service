import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
    this.showLeading = true, this.titleWidget, this.actionWidget, this.centerTitle,
  });
  final String? title;
  final Widget? titleWidget;
  final Widget? actionWidget;
  final bool? showLeading;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth:showLeading == true
          ? null:0,

      leading: showLeading == true
          ? CircleButtonWidget(
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : SizedBox.shrink(),
      centerTitle:centerTitle?? false,
      title:titleWidget?? CustomText(
       text:  title ?? '',
        style: poppinsMedium,
        fontSize: getFontSizeExtraLarge(context),
      ),
      actions: [
        Padding(
          padding:  EdgeInsets.only(right: 8.w),
          child: actionWidget??SizedBox.shrink(),
        )
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
