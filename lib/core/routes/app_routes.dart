import 'package:flutter/cupertino.dart';
import 'package:maid_service/features/auth/presentation/pages/enter_home_address_info.dart';
import 'package:maid_service/features/auth/presentation/pages/enter_personal_info_page.dart';
import 'package:maid_service/features/auth/presentation/pages/login_page.dart';
import 'package:maid_service/features/auth/presentation/pages/otp_page.dart';
import 'package:maid_service/features/auth/presentation/pages/select_role_page.dart';
import 'package:maid_service/features/auth/presentation/pages/set_new_password.dart';
import 'package:maid_service/features/auth/presentation/pages/sign_up_page.dart';
import 'package:maid_service/features/auth/presentation/pages/verify_email_page.dart';
import 'package:maid_service/features/book-maid/presentation/pages/booking_details_page.dart';
import 'package:maid_service/features/booking-status/presentation/pages/booking_tracks_page.dart';
import 'package:maid_service/features/booking-status/presentation/pages/canceled_booking_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/bottom_navigation_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/home/client/all_maid_list_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/profile/add_maid_information_page.dart';
import 'package:maid_service/features/maid-details/presentation/pages/maid_details_page.dart';
import 'package:maid_service/features/maid-earnings/presentation/pages/all_transection_history.dart';
import 'package:maid_service/features/maid-earnings/presentation/pages/maid_earnings_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/onboarding/initial_onboarding_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/splash_page.dart';

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    SplashPage.routeName: (context) => SplashPage(),
    SignUpPage.routeName: (context) => SignUpPage(),
    OtpPage.routeName: (context) => OtpPage(),
    AllTransectionHistory.routeName: (context) => AllTransectionHistory(),
    MaidEarningsPage.routeName: (context) => MaidEarningsPage(),
    InitialOnboardingPage.routeName: (context) => InitialOnboardingPage(),
    SetNewPasswordPage.routeName: (context) => SetNewPasswordPage(),
    LoginPage.routeName: (context) => LoginPage(),
    AddMaidInformationPage.routeName: (context) => AddMaidInformationPage(),
    BottomNavigationPage.routeName: (context) => BottomNavigationPage(),
    SelectRolePage.routeName: (context) => SelectRolePage(),
    VerifyEmailPage.routeName: (context) => VerifyEmailPage(),
    AllMaidListPage.routeName: (context) => AllMaidListPage(),
    MaidDetailsPage.routeName: (context) => MaidDetailsPage(),
    CanceledBookingPage.routeName: (context) => CanceledBookingPage(),
    BookingDetailsPage.routeName: (context) => BookingDetailsPage(),
    BookingTrackPage.routeName: (context) => BookingTrackPage(),
    EnterPersonalInfoPage.routeName: (context) => EnterPersonalInfoPage(),
    EnterHomeAddressInfoPage.routeName: (context) => EnterHomeAddressInfoPage(),
  };
}
