import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService({required this.dio});
  get({required String baseUrl}) async {
    try {
      // ignore: unnecessary_string_interpolations
      Response response = await dio.get("$baseUrl");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        // ignore: avoid_print
        print("Error: ${response.statusCode}");
      }
      return response.data;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
