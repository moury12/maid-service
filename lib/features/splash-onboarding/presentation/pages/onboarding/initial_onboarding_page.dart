import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_button.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/core/hive-boxes/hive_boxes.dart';
import 'package:maid_service/core/utils/static_json.dart';
import 'package:maid_service/core/utils/static_variables.dart';
import 'package:maid_service/features/splash-onboarding/bloc/on-board/on_boarding_bloc.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/splash_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/widgets/onboarding_widget.dart';

class InitialOnboardingPage extends StatefulWidget {
  static const String routeName = '/initial-onboarding';

  const InitialOnboardingPage({super.key});

  @override
  State<InitialOnboardingPage> createState() => _InitialOnboardingPageState();
}

class _InitialOnboardingPageState extends State<InitialOnboardingPage> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  OnBoardingBloc onBoardingBloc = OnBoardingBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          onBoardingBloc.add(ChangePageEvent(currentIndex: value));
          if(value==(onboardingData.length-1)){
            HiveBoxes.getInitialPhase().put(isOnBoardingComplete, true);
            if(HiveBoxes.getInitialPhase().isNotEmpty &&
                HiveBoxes.getInitialPhase()
                    .get(isOnBoardingComplete) ==
                    true){
              Navigator.pushNamedAndRemoveUntil(context, SplashPage.routeName, (route) => false,);
            }
          }
        },
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          return OnboardingWidget(
            backgroundImg: onboardingData[index]["background_img"],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.top,
                ),
                Padding(
                  padding: padding16,
                  child: Image.asset(
                    mermaidLogoWithText,
                    height: 42.h,
                  ),
                ),
                space8H,
                Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                                        padding: padding16H,
                                        child: Image.asset(
                      onboardingData[index]["image"],
                      height: 400.h,
                                        ),
                                      ),
                    )),
                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(color: AppColors.kWhiteColor),
                                  child: Padding(
                padding: padding16,
                child: Column(
                  spacing: 12.h,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    onboardingData[index]["title"],
                    BlocBuilder<OnBoardingBloc, OnBoardingState>(
                     bloc: onBoardingBloc,
                      builder: (context, state) {
                         int currentIndex =0;
                        if(state is OnBoardingInitial){
                          currentIndex=state.currentIndex;
                        } if(state is OnBoardingChangeState){
                          currentIndex=state.currentIndex;
                        }
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onboardingData.length,
                            (index) => buildDot(index, currentIndex),
                          ),
                        );
                      },
                    ),
                    CustomButton(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      title: AppStaticString.continueButton,
                    ),
                  ],
                ),
                                  ),
                                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildDot(int index, int currentIndex) {
    return Container(
      height: 10.w,
      width: currentIndex == index ? 20.w : 10.w,
      margin: EdgeInsets.only(right: 5.sp),
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.kPrimaryColor
            : AppColors.kPrimaryColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(5.r),
      ),
    );
  }
}
