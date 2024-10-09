
import 'package:bloc_clean_coding/model/user/user_model.dart';

import 'auth_api_repository.dart';

class AuthMockApiRepository implements AuthRepository {

  @override
  Future<UserModel> login(dynamic data) async {
    await Future.delayed(Duration(seconds: 1));
    return UserModel(
      token: "ashdbaksdb"
    );
  }
}