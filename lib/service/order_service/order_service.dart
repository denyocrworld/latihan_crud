import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/env.dart';

class OrderService {
  Future<List<Map<String, dynamic>>> get() async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/${uid}/api/orders';

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

  Future<Map<String, dynamic>> create({
    required DateTime createdAt,
    required int customerId,
    required String customerName,
    required List items,
    required double total,
  }) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/alex/api/orders';

    try {
      final response = await dio.post(
        url,
        data: {
          "created_at": DateFormat("yyyy-MM-dd").format(createdAt),
          "customer": {
            "id": customerId,
            "customer_name": customerName,
          },
          "items": items,
          "total": total,
        },
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

  Future<void> deleteAll() async {
    final Dio dio = Dio();
    final String url =
        'https://capekngoding.com/${uid}/api/orders/action/delete-all';

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
