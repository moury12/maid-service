import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/components/custom_network_image.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/enum/booking_status_enum.dart';
import 'package:maid_service/core/helpers/helper_function.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';
import 'package:maid_service/features/booking-status/bloc/booking/time_line_bloc.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/home_title_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';
import 'package:maid_service/features/booking-status/presentation/widgets/time_line_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/white_container_with_shadow_widget.dart';

import '../widgets/rating_review_widget.dart';

class BookingTrackPage extends StatelessWidget {
  static const String routeName = '/booking-track';
  const BookingTrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    BookingStatusEnum? bookingStatusEnum =
        ModalRoute.of(context)?.settings.arguments as BookingStatusEnum;

    return Scaffold(
      appBar: CustomAppbar(
        title: '${AppStaticString.bookingId}: K1810B001',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding16,
          child: Column(
            spacing: 12.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTitleWidget(
                title: AppStaticString.assignToWithoutClone,
                viewAll: false,
              ),
              WhiteContainerWithShadowWidget(
                child: Row(
                  spacing: 12.w,
                  children: [
                    Stack(
                      children: [
                        CustomNetworkImage(
                            imageUrl: '',
                            imageErrorUrl: dummyUserIcon,
                            boxShape: BoxShape.circle,
                            height: 70.w,
                            width: 70.w),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              activeSymbolIcon,
                              height: 15.w,
                            ))
                      ],
                    ),
                    Expanded(
                      child: Column(
                        spacing: 6.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Dynamic name',
                            style: poppinsMedium,
                            fontSize: getFontSizeExtraLarge(context),
                          ),
                          CustomText(
                            text: '5${AppStaticString.yearsOfExperience}',
                            style: poppinsRegular,
                            fontSize: getFontSizeSmall(context),
                            color: AppColors.kSubTextColor,
                          ),
                          Row(
                            spacing: 6.w,
                            children: [
                              RatingValueContainerWidget(ratingValue: '5.0'),
                              RatingValueContainerWidget(
                                color: AppColors.kPrimaryColor.withOpacity(.15),
                                child: CustomText(
                                  text: '\$20 ${AppStaticString.perHour}',
                                  style: poppinsMedium,
                                  fontSize: getFontSizeSmall(context),
                                  color: AppColors.kBlueTextColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CircleButtonWidget(
                      icon: CupertinoIcons.heart,
                      iconSize: 20.sp,
                    )
                  ],
                ),
              ),
              HomeTitleWidget(
                title: AppStaticString.trackingUpdate,
                viewAll: bookingStatusEnum == BookingStatusEnum.completed
                    ? true
                    : false,
                customButton: RatingValueContainerWidget(
                  ratingValue: AppStaticString.giveReview,
                  function: () {
                    HelperFunction.customDialogWidget(context, title: AppStaticString.writeReview, function: () {  }, child: RatingReviewWidget(),);
                  },
                ),
              ),
              BlocProvider(
                  create: (context) => TimeLineBloc()..add(LoadTimeline()),
                  child: WhiteContainerWithShadowWidget(
                    child: BlocBuilder<TimeLineBloc, TimelineState>(
                        builder: (context, state) {
                      if (state is TimelineInitial ||
                          state is TimelineLoading) {
                        return Center(child: CircularProgressIndicator());
                      } else if (state is TimelineLoaded) {
                        return ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          padding: const EdgeInsets.all(16.0),
                          itemCount: state.entries.length,
                          itemBuilder: (context, index) {
                            return TimelineTile(
                              bookingStatusEnum: bookingStatusEnum,
                              entry: state.entries[index],
                              isLast: index == state.entries.length - 1,
                            );
                          },
                        );
                      }
                      return Container();
                    }),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}
