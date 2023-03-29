import 'package:dio/dio.dart';
import 'package:lite_book/data/services/dio_manager.dart';
import 'package:lite_book/data/services/model/registartion_response_model.dart';
import 'package:lite_book/data/services/model/registartion_request_model.dart';
import 'package:lite_book/data/services/registration/registration_service.dart';
import 'package:http/http.dart' as http;

class RegisterServiseImpl extends RegisterServise {
  final Dio _dio;

  RegisterServiseImpl(DioManager dioManager) : _dio = dioManager.dio;

  @override
  Future registerUser(RegisterRequestModel registerRequestModel) async {
    // return await _dio
    //     .post(
    //       'litebook/register.php',
    //       data: registerRequestModel.toJson(),
    //     )
    //     .then((response) => registerResponseModelFromJson(response.data));

    final response = await http.post(
        Uri.parse(DioManager.baseUsr + "litebook/register.php"),
        body: registerRequestModel.toJson());
    if (response.statusCode == 200) {
      print("Yes");
      return registerResponseModelFromJson(response.body);
    } else {
      print('You have error');
      return '';
    }
  }
}
