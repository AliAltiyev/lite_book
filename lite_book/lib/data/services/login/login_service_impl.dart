import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:lite_book/data/services/login/login_servise.dart';
import 'package:lite_book/data/services/login/model/login_reguest_model.dart';

import '../dio_manager.dart';
import 'model/login_response_model.dart';

class LoginServiceImpl extends LoginService {
  final Dio _dio;

  static const url = 'https://vh123.by2050.ihb.by/litebook/login.php';

  LoginServiceImpl(DioManager dioManager) : _dio = dioManager.dio;

  @override
  Future loginUser(LoginRequestModel loginRequestModel) async {
    try {
      final response =
          await http.post(Uri.parse(url), body: loginRequestModel.toJson());
      if (response.statusCode == 200) {
        print('login works');
        print(response.body.toString());
        return loginResponseModelFromJson(response.body);
      } else {
        print('You have error');
        return '';
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
