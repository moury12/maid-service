import 'package:flutter/material.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

class AllMaidListPage extends StatelessWidget {
  static const String routeName ='/all-maid';
  const AllMaidListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppbar(title: AppStaticString.allMaids,),
    body: ListView.builder(
      padding: padding12,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) => Padding(
        padding: padding6V,
        child: WhiteContainerWithShadowWidget(
          child: MaidCardWidget(),
        ),
      ),
      itemCount: 5,
    ),);
  }
}
