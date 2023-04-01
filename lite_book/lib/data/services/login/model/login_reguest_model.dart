import 'dart:convert';

String registerResponseModelToJson(LoginRequestModel data) =>
    json.encode(data.toJson());

class LoginRequestModel {
  final String username;
  final String password;

  LoginRequestModel(this.username, this.password);

  Map<String, dynamic> toJson() => {'email': username, 'password': password};
}
