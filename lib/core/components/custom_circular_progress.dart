import 'package:flutter/material.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';

class CustomCircularProgress extends StatelessWidget {
  final double value;
  final Color progressColor;
  final double size;
  final String percentageText;

  const CustomCircularProgress({
    super.key,
    required this.value,
    required this.progressColor,
    this.size = 80.0,
    this.percentageText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background circle
        SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            value: 1.0, // Full circle for background
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.kButtonBackgroundColor),
            strokeWidth: 6.0,
          ),
        ),
        // Progress circle
        SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            value: value,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
            strokeWidth: 6.0,
          ),
        ),
        // Percentage text
        CustomText(
        text:   percentageText.isNotEmpty ? percentageText : '${(value * 100).toInt()}%',
          style: poppinsSemiBold,
          fontSize: getFontSizeLarge(context),
        ),
      ],
    );
  }
}

