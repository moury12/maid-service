import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_appbar.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_image_constant.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/padding_constant.dart';
import 'package:maid_service/features/auth/presentation/widgets/circle_button_widget.dart';
import 'package:maid_service/features/bottom-navigation/bloc/navigation/navigation_bloc.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/booking/booking_page.dart';
import 'package:maid_service/features/booking-status/presentation/pages/canceled_booking_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/home/home_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/notification/notification_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/profile/profile_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/search/search_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/coin_point_widget.dart';
import 'package:maid_service/features/bottom-navigation/presentation/widgets/maid_card_widget.dart';

class BottomNavigationPage extends StatefulWidget {
  static const String routeName = '/nav';

  const BottomNavigationPage({super.key});

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  late NavigationBloc _navigationBloc;

  @override
  void initState() {
    super.initState();
    _navigationBloc = NavigationBloc();
  }

  @override
  void dispose() {
    _navigationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const BookingPage(),
      const SearchPage(),
      const NotificationPage(),
      const ProfilePage(),
    ];

    final List<PreferredSizeWidget> appBars = [
      CustomAppbar(
        showLeading: false,
        titleWidget: ProfilePicNameWithSubtitle(
          showAvailability: false,
          showTrailing: false,
          profileSubText: AppStaticString.welcomeToMermaids,
          subTextColor: AppColors.kTextColor,
        ),

      ),
      CustomAppbar(
        title: AppStaticString.bookingHistory,
        actionWidget: CircleButtonWidget(
          img: crossIcon,
          onPressed: () {
Navigator.pushNamed(context, CanceledBookingPage.routeName);
          },
        ),
      ),
      CustomAppbar(
        titleWidget: FocusScope(
          child: CustomTextField(
            fillColor: AppColors.kButtonBackgroundColor,
            contentPadding: EdgeInsets.zero,
            height: 50.h,
          ),
        ),
      ),
      CustomAppbar(
        title: AppStaticString.notification,
      ),
      CustomAppbar(
        title: AppStaticString.profile,
        actionWidget: CoinPointWidget(),
      ),
    ];

    return BlocBuilder<NavigationBloc, NavigationState>(
      bloc: _navigationBloc,
      builder: (context, state) {
        int currentIndex = 0;
        if (state is NavigationChangeState) {
          currentIndex = state.currentIndex;
        }

        return Scaffold(
          appBar: appBars[currentIndex],
          body: SafeArea(
            child: IndexedStack(index: currentIndex, children: pages),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              _navigationBloc.add(ChangeNavEvent(currentIndex: index));
            },
            items: [
              _buildBottomNavItem(
                  homeIcon, AppStaticString.home, currentIndex, 0),
              _buildBottomNavItem(
                  calenderIcon, AppStaticString.booking, currentIndex, 1),
              _buildBottomNavItem(
                  searchIcon, AppStaticString.search, currentIndex, 2),
              _buildBottomNavItem(notificationIcon,
                  AppStaticString.notification, currentIndex, 3),
              _buildBottomNavItem(
                  profileIcon, AppStaticString.profile, currentIndex, 4),
            ],
            backgroundColor: AppColors.kWhiteColor,
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(
      String icon, String label, int currentIndex, int index) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        height: 20.w,
        color: currentIndex == index
            ? AppColors.kPrimaryColor
            : AppColors.kSubTextColor,
      ),
      label: label,
    );
  }
}


