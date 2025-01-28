import 'package:flutter/material.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/history_card_widget.dart';

class CanceledBookingPage extends StatelessWidget {
  static const String routeName = '/cancel-booking';
  const CanceledBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppStaticString.canceledBooking,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding16,
          child: HistoryListWidget(function: () {

          },),
        ),
      ),
    );
  }
}
