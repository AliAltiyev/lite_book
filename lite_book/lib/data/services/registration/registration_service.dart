import 'model/registartion_request_model.dart';

abstract class RegisterServise {
  Future registerUser(RegisterRequestModel registerRequestModel);
}
