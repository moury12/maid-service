import 'package:flutter/material.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/tab-bar/dynamic_tab_widget.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/maid-earnings/presentation/pages/all_transection_history.dart';
import 'package:maid_service/features/maid-earnings/presentation/widgets/earning_chart_widget.dart';
import 'package:maid_service/features/maid-earnings/presentation/widgets/transection_history_widget.dart';

class MaidEarningsPage extends StatelessWidget {
  static const String routeName = '/maid-earnings';
  const MaidEarningsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: true,
        title: AppStaticString.earnings,
        actionWidget: CustomText(
          text: '\$00.00',
          style: poppinsMedium,
          fontSize: getFontSizeLarge(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding16,
          child: Column(
            children: [
              HomeTitleWidget(
                title: AppStaticString.earnings,
                viewAll: false,
              ),
              DynamicTabWidget(tabs: [
                AppStaticString.weekly,
                AppStaticString.monthly,
                AppStaticString.yearly
              ], tabContent: [
                EarningChartWidget(),
                EarningChartWidget(),
                EarningChartWidget(),

              ]),
              HomeTitleWidget(
                title: AppStaticString.transectionHistory,
                function: () {
                  Navigator.pushNamed(context, AllTransectionHistory.routeName);
                },
              ),
              ...List.generate(
                6,
                (index) => TransectionHistoryWidget(
                  fromMermaidCoin: index % 2 == 0 ? true : false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


