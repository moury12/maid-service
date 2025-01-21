import 'package:flutter/cupertino.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/splash_page.dart';

class AppRoutes{
  static final routes =<String, WidgetBuilder>{
    SplashPage.routeName : (context) => SplashPage(),
  };
}