import 'package:lite_book/data/services/login/model/login_reguest_model.dart';

abstract class LoginService {
  Future loginUser(LoginRequestModel loginRequestModel);
}
