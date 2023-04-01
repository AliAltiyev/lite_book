import 'model/registartion_request_model.dart';

abstract class RegisterService {
  Future registerUser(RegisterRequestModel registerRequestModel);
}
