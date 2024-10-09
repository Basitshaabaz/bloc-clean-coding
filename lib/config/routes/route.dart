import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../views/views.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case  RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case  RoutesName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          );
        });
    }
  }

}