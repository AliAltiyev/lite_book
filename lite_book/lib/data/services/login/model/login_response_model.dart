import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  final int statu;
  final String message;
  final String? email;
  final String? userId;

  LoginResponseModel.fromJson(Map<String, dynamic> json)
      : statu = json['STATU'],
        message = json['MESSAGE'] ?? json['MESSAGE'],
        email = json['EMAIL'] ?? json['EMAIL'],
        userId = json['USER_ID'] ?? json['USER_ID'];
}
