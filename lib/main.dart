import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:bloc_clean_coding/repository/auth_api/auth_api_repository.dart';
import 'package:bloc_clean_coding/repository/auth_api/auth_http_api_repository.dart';
import 'package:bloc_clean_coding/repository/movies_api/movies_api_repository.dart';
import 'package:bloc_clean_coding/repository/movies_api/movies_http_api_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'config/routes/route.dart';
import 'config/themes/themes.dart';

final GetIt getIt=GetIt.instance;

void main() {
  _serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

void _serviceLocator(){
  getIt.registerLazySingleton<AuthRepository>(() => AuthHttpApiRepository());
  getIt.registerLazySingleton<MoviesApiRepository>(() => MoviesHttpApiRepository());
}
