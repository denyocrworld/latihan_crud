import 'package:dio/dio.dart';
import 'package:hyper_ui/env.dart';

class AuthService {
  static String? token;
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "https://capekngoding.com/${uid}/api/auth/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      Map obj = response.data;
      if (obj["data"]["token"] != null) {
        token = obj["data"]["token"];
        return true;
      }
      return false;
    } on Exception catch (_) {
      return false;
    }
  }
}
