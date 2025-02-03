import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:maid_service/core/routes/app_routes.dart';
import 'package:maid_service/core/constants/bloc_provides.dart';
import 'package:maid_service/core/theme/app_theme.dart';
import 'package:maid_service/core/utils/static_variables.dart';
import 'package:maid_service/features/bottom-navigation/presentation/pages/bottom_navigation_page.dart';
import 'package:maid_service/features/splash-onboarding/presentation/pages/splash_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(initialPhase);
  await Hive.openBox(role);
  runApp(

    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
/*    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);*/
    return ScreenUtilInit(
      designSize: const Size(423.52, 945.88), // Base design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return/* MultiBlocProvider(
          providers: [...AppBlocProvides.getAllBlocProviders],
          child:*/ MaterialApp(
            title: 'Maid Service App',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: AppTheme.lightTheme, // Custom theme
            darkTheme: AppTheme.darkTheme, // Optional dark theme
            initialRoute: BottomNavigationPage.routeName,
            routes: AppRoutes.routes,
          /*),*/
        );
      },
    );
  }
}
