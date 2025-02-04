
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/maid_details_content_widget.dart';
class EarningChartWidget extends StatelessWidget {
  const EarningChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithBorder(
        borderColor: AppColors.kFadeWhiteColor,
        child: Column(
          spacing: 12.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: AppStaticString.totalUsd,
              style: poppinsSemiBold,
              fontSize: getFontSizeLarge(context),
            ),
            Row(
              spacing: 6.w,
              children: [
                RatingValueContainerWidget(
                  icon: Icons.arrow_upward,
                  ratingValue: '2.6%',
                ),
                CustomText(
                  text: 'Higher than last week',
                  color: AppColors.kSubTextColor,
                  fontSize: getFontSizeSmall(context),
                )
              ],
            ),
            AspectRatio(
              aspectRatio: 1.7,
              child: LineChart(LineChartData(
                  gridData: FlGridData(
                      show: true, drawHorizontalLine: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              final years = [
                                '2024',
                                '2023',
                                '2022',
                                '2021',
                                '2020',
                                '2019',
                                '2018'
                              ];
                              return Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: CustomText(
                                  text: years[
                                  value.toInt() % years.length],
                                  style: poppinsMedium,
                                  color: AppColors.kSubTextColor,
                                  fontSize:
                                  getFontSizeSmall(context),
                                ),
                              );
                            },
                            interval: 1,
                            reservedSize: 20)),
                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return CustomText(
                              text: '${value.toInt()}k',
                              style: poppinsMedium,
                              color: AppColors.kSubTextColor,
                              fontSize: getFontSizeSmall(context),
                            );
                          },
                          interval: 2.5,
                          reservedSize: 28,
                        )),
                    topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                        spots: [
                          FlSpot(0, 2.5),
                          FlSpot(1, 3.5),
                          FlSpot(2, 5),
                          FlSpot(3, 4),
                          FlSpot(4, 6),
                          FlSpot(5, 7.5),
                          FlSpot(6, 8),
                        ],
                        isCurved: true,
                        color: AppColors.kPurpleColor,
                        barWidth: 2,
                        belowBarData: BarAreaData(
                            show: true,
                            color: AppColors.kPurpleColor
                                .withOpacity(.2))),LineChartBarData(
                        spots: [
                          FlSpot(0, 4),
                          FlSpot(1, 5.5),
                          FlSpot(2, 6),
                          FlSpot(3, 6.5),
                          FlSpot(4, 7),
                          FlSpot(5, 8.5),
                          FlSpot(6, 9),
                        ],
                        isCurved: true,
                        color: AppColors.kRedColor,
                        barWidth: 2,
                        belowBarData: BarAreaData(
                            show: true,
                            color: AppColors.kRedColor
                                .withOpacity(.2)))
                  ])),
            )
          ],
        ));
  }
}

