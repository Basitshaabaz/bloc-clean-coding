import 'package:bloc_clean_coding/services/splash/splash_services.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashService _splashService = SplashService();

  @override
  void initState() {
    super.initState();
    _splashService.checkAuth(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Text("Splash Screen", style: TextStyle(fontSize: 20),),
      ))
    );
  }
}
