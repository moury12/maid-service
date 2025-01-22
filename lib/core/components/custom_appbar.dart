import 'package:flutter/material.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /*leadingWidth: 40.w,*/
      leading: CircleButtonWidget(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title ?? '',
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
