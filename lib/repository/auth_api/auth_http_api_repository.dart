import 'package:flutter/foundation.dart';

import '../../data/network/network_api_service.dart';
import '../../model/user/user_model.dart';
import '../../utils/app_urls.dart';
import 'auth_api_repository.dart';

class AuthHttpApiRepository implements AuthRepository {
  final apiService = NetworkApiService();

  @override
  Future<UserModel> login(dynamic data) async {
    dynamic response = await apiService.postApi(AppUrl.login, data);
    if (kDebugMode) {
      print(response);
    }
    return UserModel.fromJson(response);
  }
}
