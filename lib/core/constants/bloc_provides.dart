import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maid_service/features/splash-onboarding/presentation/bloc/splash_bloc.dart';

class AppBlocProvides{
  static List getAllBlocProviders =[
BlocProvider(create: (context) => SplashBloc(),)
    /*  BlocProvider(create: (context) => BookingBloc()),
            BlocProvider(create: (context) => AuthBloc()),*/
  ];
}