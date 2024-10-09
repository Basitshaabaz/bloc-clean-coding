import 'package:bloc_clean_coding/model/user/user_model.dart';

abstract class AuthRepository {
  Future<UserModel> login(dynamic data);
}
