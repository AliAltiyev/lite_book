import 'dart:convert';

String registerResponseModelToJson(RegisterRequestModel data) =>
    json.encode(data.toJson());

class RegisterRequestModel {
  final String username;
  final String email;
  final String password;

  RegisterRequestModel(this.username, this.email, this.password);

  Map<String, dynamic> toJson() =>
      {'username': username, 'email': email, 'password': password};
}
