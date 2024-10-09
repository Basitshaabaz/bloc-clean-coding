

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

extension FlushBarExtension on BuildContext {

  void flushBarShowErrorMessage({required String message}){
    showFlushbar(context: this, flushbar: Flushbar(
      forwardAnimationCurve: Curves.decelerate,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      duration: const Duration(seconds: 3),
      borderRadius: BorderRadius.circular(8),
      backgroundColor: Colors.red,
      reverseAnimationCurve: Curves.easeInOut,
      positionOffset: 20,
      icon: Icon(
        Icons.error,
        size: 20,
        color: Colors.white,
      ),
    )..show(this));
  }

  void flushBarShowSuccessMessage({required String message}){
    showFlushbar(context: this, flushbar: Flushbar(
      forwardAnimationCurve: Curves.decelerate,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      duration: const Duration(seconds: 3),
      borderRadius: BorderRadius.circular(8),
      backgroundColor: Colors.green,
      reverseAnimationCurve: Curves.easeInOut,
      positionOffset: 20,
      icon: Icon(
        Icons.error,
        size: 20,
        color: Colors.white,
      ),
    )..show(this));
  }


}