import 'package:flutter/cupertino.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/notification_card_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: padding16H,
      itemBuilder: (context, index) => NotificationCardWidget(),
    );
  }
}

