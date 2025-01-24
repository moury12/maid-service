import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_container.dart';
import 'package:maid_service/core/components/tab-bar/tab_content_view.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';


class DynamicTabWidget extends StatelessWidget {
  final List<String> tabs;
  final List<Widget> tabContent;
  final Function(int)? function;
  const DynamicTabWidget(
      {super.key, required this.tabs, required this.tabContent, this.function});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: tabs.length,
        // Dynamically set the number of tabs
        child: Column(
          children: [
            space16H,
            TabBar(
              // padding: EdgeInsets.zero,
              overlayColor: const WidgetStatePropertyAll<Color>(
                  AppColors.kButtonBackgroundColor),
              // isScrollable: true,
              dividerHeight: 4.h,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: UnderlineTabIndicator(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0.w,
                ),
              ),

              labelColor: AppColors.kTextColor,
              unselectedLabelColor: AppColors.kTextColor,
              labelStyle: poppinsRegular.copyWith(
                  fontSize: getFontSizeDefault(context)),
              unselectedLabelStyle:
              poppinsMedium.copyWith(fontSize: getFontSizeDefault(context)),
              dividerColor: Colors.transparent,
              
              onTap: function ?? (value) {},
              tabs: tabs
                  .map((tabName) => CustomContainer(
backgroundColor: AppColors.kWhiteColor,
                    widget: Text(
                      tabName,
                    ),
                  ))
                  .toList(),
            ),
            TabContentView(
              children: tabContent.toList(),
            )
          ],
        ),
      );

  }
}
