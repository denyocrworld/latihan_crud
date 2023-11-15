import 'package:dio/dio.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/env.dart';

class CustomerService {
  Future<List<Map<String, dynamic>>> get() async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/${uid}/api/customers';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${AuthService.token}",
          },
        ),
      );

      return List<Map<String, dynamic>>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> getById(int id) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/${uid}/api/customers/$id';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${AuthService.token}",
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> create(Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/alex/api/customers';

    try {
      final response = await dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${AuthService.token}",
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> update(int id, Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/${uid}/api/customers/$id';

    try {
      final response = await dio.put(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${AuthService.token}",
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<void> delete(int id) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/${uid}/api/customers/$id';

    try {
      await dio.delete(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${AuthService.token}",
          },
        ),
      );
    } catch (e) {
      throw e;
    }
  }

  Future<void> deleteAll() async {
    final Dio dio = Dio();
    final String url =
        'https://capekngoding.com/${uid}/api/customers/action/delete-all';

    try {
      await dio.delete(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${AuthService.token}",
          },
        ),
      );
    } catch (e) {
      throw e;
    }
  }
}
