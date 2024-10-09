import 'dart:async';

import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:bloc_clean_coding/services/session_manager/session_controller.dart';
import 'package:flutter/widgets.dart';

class SplashService {
  void checkAuth(BuildContext context) async {
    SessionController().getUserFromPreference().then((value) async {
      if (!context.mounted) {
        return;
      }

      if (SessionController.isLogin ?? false) {
        Timer(
            const Duration(seconds: 2),
            () => Navigator.pushNamedAndRemoveUntil(
                context, RoutesName.homeScreen, (route) => false));
      } else {
        _gotoLogInScreen(context);
      }
    }).onError((e, s) {
      debugPrint(e.toString());
      if (!context.mounted) {
        return;
      }
      _gotoLogInScreen(context);
    });
  }

  void _gotoLogInScreen(BuildContext context) {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.loginScreen, (route) => false));
  }
}
