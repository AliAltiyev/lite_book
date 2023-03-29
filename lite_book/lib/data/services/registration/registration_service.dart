import 'package:lite_book/data/services/model/registartion_request_model.dart';
import 'package:lite_book/data/services/model/registartion_response_model.dart';

abstract class RegisterServise {
  Future registerUser(RegisterRequestModel registerRequestModel);
}
