import 'dart:convert';

import 'package:bloc_clean_coding/model/user/user_model.dart';
import 'package:bloc_clean_coding/services/storage/local_storage.dart';
import 'package:flutter/material.dart';

const String token = 'token';
const String login = 'isLogin';

class SessionController {
  static final SessionController _sessionManger = SessionController._internal();
  static final _localStorage = LocalStorage();
  static bool? isLogin;
  static UserModel user = UserModel();

  factory SessionController() => _sessionManger;

  SessionController._internal() {
    isLogin = false;
  }

  Future<void> saveUserInPreference(dynamic user) async {
    _localStorage.setValue(token, jsonEncode(user)).then((value) {
      _localStorage.setValue(login, 'true');
    }).onError((e, s) {
      _localStorage.setValue(login, 'false');
      debugPrint(e.toString());
    });
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await _localStorage.readValue(token);
      var isLogin = await _localStorage.readValue(login);
      if (userData != null && userData.isNotEmpty) {
        SessionController.user = UserModel.fromJson(jsonDecode(userData));
      }
      SessionController.isLogin = isLogin == 'true' ? true : false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> logout() async {
    try {
      _localStorage.clearValue(token).then((value){
        _localStorage.clearValue(login);
        SessionController.isLogin = false;
      }).onError((e,s){
        debugPrint(e.toString());
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
