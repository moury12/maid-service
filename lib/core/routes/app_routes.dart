import 'package:flutter/cupertino.dart';
import 'package:maid_service/features/auth/presentation/pages/enter_home_address_info.dart';
import 'package:maid_service/features/auth/presentation/pages/enter_personal_info_page.dart';
import 'package:maid_service/features/auth/presentation/pages/login_page.dart';
import 'package:maid_service/features/auth/presentation/pages/otp_page.dart';
import 'package:maid_service/features/auth/presentation/pages/select_role_page.dart';
import 'package:maid_service/features/auth/presentation/pages/set_new_password.dart';
import 'package:maid_service/features/auth/presentation/pages/sign_up_page.dart';
import 'package:maid_service/features/auth/presentation/pages/verify_email_page.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/bottom_navigation_page.dart';
import 'package:maid_service/features/maid-details/presentation/pages/maid_details_page.dart';
import 'package:maid_service/features/maid-details/presentation/pages/maid_details_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/onboarding/initial_onboarding_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/splash_page.dart';

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    SplashPage.routeName: (context) => SplashPage(),
    SignUpPage.routeName: (context) => SignUpPage(),
    OtpPage.routeName: (context) => OtpPage(),
    InitialOnboardingPage.routeName: (context) => InitialOnboardingPage(),
    SetNewPasswordPage.routeName: (context) => SetNewPasswordPage(),
    LoginPage.routeName: (context) => LoginPage(),
    BottomNavigationPage.routeName: (context) => BottomNavigationPage(),
    SelectRolePage.routeName: (context) => SelectRolePage(),
    VerifyEmailPage.routeName: (context) => VerifyEmailPage(),
    MaidDetailsPage.routeName: (context) => MaidDetailsPage(),
    EnterPersonalInfoPage.routeName: (context) => EnterPersonalInfoPage(),
    EnterHomeAddressInfoPage.routeName: (context) => EnterHomeAddressInfoPage(),
  };
}
