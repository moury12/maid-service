import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/features/bottom-navigation/bloc/search/switch-bloc/switch_bloc.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/category_item_card_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/maid-details/presentation/widgets/custom_divider.dart';
class FilterOfSearchWidget extends StatelessWidget {
  const FilterOfSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleWidget(
          title: AppStaticString.priceRange,
          viewAll: false,
        ),
        Row(
          spacing: 12.w,
          children: [
            Expanded(
              child: CustomTextField(
                titleTextColor: AppColors.kSubTextColor,
                title: AppStaticString.min,
                hintText: 'Any',
              ),
            ),
            Expanded(
              child: CustomTextField(
                titleTextColor: AppColors.kSubTextColor,
                title: AppStaticString.max,
                hintText: 'Any',
              ),
            ),
          ],
        ),
        CustomVerticalDivider(),
        HomeTitleWidget(
          title: AppStaticString.services,
          viewAll: false,
        ),
        Wrap(
          children: List.generate(
            6,
                (index) => Padding(
              padding: padding6,
              child: CategoryItemCard(),
            ),
          ), // Your GridView widget
        ),
        CustomVerticalDivider(),
        HomeTitleWidget(
          title: AppStaticString.showProMaids,
          customButton: BlocProvider(
            create: (context) => SwitchBloc(),
            child: BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                bool switchValue = false;
                if (state is SwitchInitial) {
                  switchValue = state.switchValue;
                }
                if (state is SwitchLoadedState) {
                  switchValue = state.switchValue;
                }
                return Switch(
                  activeColor: AppColors
                      .kWhiteColor, // Active circle color (thumb)
                  activeTrackColor: AppColors
                      .kButtonBackgroundColor, // Active background color
                  inactiveThumbColor: AppColors
                      .kWhiteColor, // Inactive circle color (thumb)
                  inactiveTrackColor:
                  AppColors.kButtonBackgroundColor,
                  value: switchValue,
                  onChanged: (value) {
                    context.read<SwitchBloc>().add(
                        SwitchTiggerEvent(value: value));
                  },
                );
              },
            ),
          ),
        ),
        CustomText(
          text: AppStaticString.providedByVetted,
          style: poppinsRegular,
          color: AppColors.kSubTextColor,
        )
      ],
    );
  }
}
