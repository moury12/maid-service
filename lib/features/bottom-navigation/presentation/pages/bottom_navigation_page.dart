import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/features/bottom-navigation/bloc/navigation/navigation_bloc.dart';

class BottomNavigationPage extends StatelessWidget {
  static const String routeName = '/nav';

  const BottomNavigationPage({super.key});
  @override
  Widget build(BuildContext context) {
    NavigationBloc navigationBloc = NavigationBloc();

    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        bloc: navigationBloc,
        builder: (context, state) {
          int currentIndex = 0;
          if (state is NavigationInitial) {
            currentIndex = state.currentIndex;
          }if (state is NavigationChangeState) {
            currentIndex = state.currentIndex;
          }
          return BottomNavigationBar(currentIndex: currentIndex,
              backgroundColor: AppColors.kWhiteColor,

              onTap: (value) {
                navigationBloc.add(ChangeNavEvent(currentIndex: value));
              },
              items: [
            BottomNavigationBarItem(
                icon: Image.asset(homeIcon,
                    height: 20.w,
                    color: currentIndex == 0
                        ? AppColors.kPrimaryColor
                        : AppColors.kSubTextColor),
                label: AppStaticString.home),
            BottomNavigationBarItem(
                icon: Image.asset(calenderIcon,
                    height: 20.w,
                    color: currentIndex == 1
                        ? AppColors.kPrimaryColor
                        : AppColors.kSubTextColor),
                label: AppStaticString.home),
            BottomNavigationBarItem(
                icon: Image.asset(searchIcon,
                    height: 20.w,
                    color: currentIndex == 2
                        ? AppColors.kPrimaryColor
                        : AppColors.kSubTextColor),
                label: AppStaticString.home),
            BottomNavigationBarItem(
                icon: Image.asset(notificationIcon,
                    height: 20.w,
                    color: currentIndex == 3
                        ? AppColors.kPrimaryColor
                        : AppColors.kSubTextColor),
                label: AppStaticString.home),
            BottomNavigationBarItem(
                icon: Image.asset(profileIcon,
                    height: 20.w,
                    color: currentIndex == 4
                        ? AppColors.kPrimaryColor
                        : AppColors.kSubTextColor),
                label: AppStaticString.home),
          ]);
        },
      ),
    );
  }
}
