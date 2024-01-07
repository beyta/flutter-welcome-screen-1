import 'package:flutter/material.dart';

import '../views/SplashScreen/splashscreen.dart';

class AppRoutes {
  static const String ROUTE_Initial = ROUTE_Splashscreen;

  static const String ROUTE_Splashscreen = "/splash";

  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch (settings.name){
      case  ROUTE_Splashscreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
        break;
      default:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
        break;
    }
  }
}