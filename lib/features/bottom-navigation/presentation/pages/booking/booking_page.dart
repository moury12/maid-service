import 'package:flutter/cupertino.dart';
import 'package:maid_service/core/components/tab-bar/dynamic_tab_widget.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/enum/booking_status_enum.dart';
import 'package:maid_service/core/enum/booking_status_enum.dart';
import 'package:maid_service/core/enum/booking_status_enum.dart';
import 'package:maid_service/features/book-maid/presentation/pages/booking_details_page.dart';
import 'package:maid_service/features/book-maid/presentation/pages/booking_details_page.dart';
import 'package:maid_service/features/book-maid/presentation/pages/booking_details_page.dart';
import 'package:maid_service/features/booking-status/presentation/pages/booking_tracks_page.dart';
import 'package:maid_service/features/booking-status/presentation/pages/booking_tracks_page.dart';
import 'package:maid_service/features/booking-status/presentation/pages/booking_tracks_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/history_card_widget.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding16.copyWith(top: 0),
        child: Column(
          children: [
            DynamicTabWidget(tabs: [
              AppStaticString.ongoing,
              AppStaticString.pending,
              AppStaticString.completed
            ], tabContent: [
              HistoryListWidget(
                value: 0.7,
                function: () {
                  Navigator.pushNamed(context, BookingTrackPage.routeName,
                      arguments: BookingStatusEnum.ongoing);
                },
              ),
              HistoryListWidget(
                value: 0.0,
                function: () {
                  Navigator.pushNamed(context, BookingTrackPage.routeName,
                      arguments: BookingStatusEnum.pending);
                },
              ),
              HistoryListWidget(
                value: 1.0,
                function: () {
                  Navigator.pushNamed(context, BookingTrackPage.routeName,
                      arguments: BookingStatusEnum.completed);
                },
              ),
            ])
          ],
        ),
      ),
    );
  }
}
