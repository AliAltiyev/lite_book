import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lite_book/data/services/login/login_service_impl.dart';
import 'package:lite_book/data/services/login/model/login_reguest_model.dart';
import 'package:lite_book/data/services/login/model/login_response_model.dart';

class SignInController extends GetxController {
  final TextEditingController usernameTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final Rx<bool> isLoading = RxBool(false);
  final Rxn<dynamic> hasError = Rxn();
  final Rx<bool> isLogin = Rx(false);
  final RxnString errorTexts = RxnString();

  final Rxn<LoginResponseModel> user = Rxn();

  final LoginServiceImpl _loginServiceImpl;

  SignInController(this._loginServiceImpl);

  void loginUserWithLoginService(String username, String password) {
    final LoginRequestModel requestModel = LoginRequestModel(username, password);

    isLoading.call(true);
    _loginServiceImpl
        .loginUser(requestModel)
        .then((user) {
          if (user.statu == 1) errorTexts.call('error password');
          if (user.statu == 0) errorTexts('user not found');
          if (user.statu == 2) isLogin.call(true);
        })
        .catchError((error) {
          hasError.call("Error 123456");
    })
        .whenComplete(() => isLoading.call(false));
  }
}
