import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lite_book/data/services/login/login_service_impl.dart';
import 'package:lite_book/data/services/login/model/login_reguest_model.dart';
import 'package:lite_book/data/services/login/model/login_response_model.dart';

class SignInController extends GetxController {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final Rx<bool> isLoading = RxBool(false);
  final Rxn<dynamic> hasError = Rxn();
  final Rx<bool> isLogin = Rx(false);

  final Rxn<LoginResponseModel> user = Rxn();

  final LoginServiceImpl _loginServiceImpl;

  SignInController(this._loginServiceImpl);

  void loginUserWithLoginService(String email, String password) {
    final LoginRequestModel requestModel = LoginRequestModel(email, password);

    isLoading.call(true);
    _loginServiceImpl
        .loginUser(requestModel)
        .then((user) {
        isLogin.trigger(true);
        })
        .catchError((error) {})
        .whenComplete(() => isLoading.call(false));
  }
}
