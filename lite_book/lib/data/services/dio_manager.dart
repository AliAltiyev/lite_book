import 'package:dio/dio.dart';

class DioManager {
  late Dio dio;

  static const String baseUsr = 'http://vh123.by2050.ihb.by/';

  DioManager() {
    dio = Dio(BaseOptions(baseUrl: baseUsr));
  }
}
