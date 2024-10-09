import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class LocalStorage{
  final storage = const FlutterSecureStorage();

  Future<bool> setValue(String key, String value) async {
    try {
      await storage.write(key: key, value: value);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<dynamic> readValue(String key) async {
    try {
      return await storage.read(key: key);
    } catch (e) {
      return null;
    }
  }

  Future<bool> clearValue(String key) async {
    try {
      await storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

}