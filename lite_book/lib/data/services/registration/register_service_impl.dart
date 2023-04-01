import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:lite_book/data/services/dio_manager.dart';
import 'package:lite_book/data/services/registration/registration_service.dart';

import 'model/registartion_request_model.dart';
import 'model/registartion_response_model.dart';

class RegisterServiceImpl extends RegisterService {
  final Dio _dio;

  RegisterServiceImpl(DioManager dioManager) : _dio = dioManager.dio;

  @override
  Future registerUser(RegisterRequestModel registerRequestModel) async {
    // try {
    //   return await _dio
    //       .post(
    //         'litebook/register.php',
    //         data: registerRequestModel.toJson(),
    //       )
    //       .then((response) => registerResponseModelFromJson(response.data));
    // } catch (e) {
    //   print(e);
    // }

    try {
      final response = await http.post(
          Uri.parse('https://vh123.by2050.ihb.by/litebook/register.php'),
          body: registerRequestModel.toJson());
      if (response.statusCode == 200) {
        print('Yes');
        print(response.body.toString());
        return registerResponseModelFromJson(response.body);
      } else {
        print('You have error');
        return '';
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
