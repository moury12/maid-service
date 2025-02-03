import 'package:flutter/material.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/maid-earnings/presentation/pages/maid_earnings_page.dart';

class AllTransectionHistory extends StatelessWidget {
  static const String routeName = 'transection-history';
  const AllTransectionHistory({super.key});

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
      body: ListView.builder(
        itemCount: 10,
        padding: padding12 ,
        itemBuilder: (context, index) => TransectionHistoryWidget(
          fromMermaidCoin: index % 2 == 0 ? true : false,
        ),
      ),
    );
  }
}
