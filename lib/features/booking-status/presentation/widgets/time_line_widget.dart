import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/enum/booking_status_enum.dart';
import 'package:maid_service/features/booking-status/data/model/TimeLineEntry.dart';

class TimelineTile extends StatelessWidget {
  final TimelineEntry entry;
  final bool isLast;
  final BookingStatusEnum bookingStatusEnum;

  const TimelineTile(
      {super.key,
      required this.entry,
      required this.isLast,
      required this.bookingStatusEnum});

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: entry.date,
          style: poppinsRegular,
          color: AppColors.kSubTextColor,
        ),
        Padding(
          padding: padding12H,
          child: Column(
            children: [
              // Circle indicator
              Container(
                height: 32.w,
                width: 32.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: entry.isCompleted
                      ? AppColors.kGreenTextColor
                      : AppColors.kWhiteColor,
                  border: Border.all(
                    color: AppColors.kGreenTextColor,
                    width: 2,
                  ),
                ),
                child: entry.isCompleted
                    ? Icon(Icons.check,
                        color: AppColors.kWhiteColor, size: 20.sp)
                    : null,
              ),
              // Connector line
              if (!isLast)
                Container(
                  width: 2.w,
                  height: 60.h, // Adjust height as needed
                  color: AppColors.kGreyBorderColor,
                ),
            ],
          ),
        ),
        Expanded(
          child: CustomText(
            text: entry.description,
            style: poppinsMedium,
          ),
        ),
      ],
    );
  }


}
