import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/data/services/registration/registration_service.dart';

import '../../data/services/registration/model/registartion_request_model.dart';
import '../../data/services/registration/model/registartion_response_model.dart';

class RegistrationController extends GetxController {
  final TextEditingController userNameTextController = TextEditingController();
  final TextEditingController emailNameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();

  final Rx<bool> isLoading = RxBool(false);
  final Rxn<dynamic> hasError = Rxn();
  final Rx<bool> isRegister = Rx(false);

  final Rxn<RegisterResponseModel> user = Rxn();

  final RegisterService _registerService;

  RegistrationController(this._registerService);

  void registerUserWithRegisterService(
      String username, String email, String password) {
    final RegisterRequestModel registerRequestModel =
        RegisterRequestModel(username, email, password);

    isLoading.call(true);
    _registerService.registerUser(registerRequestModel).then((user) {
      isRegister.call(true);
    }).catchError((dynamic error) {
      hasError.trigger(error);
    }).whenComplete(() {
      isLoading.call(false);
    });
  }
}
