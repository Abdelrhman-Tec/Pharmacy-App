import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponseBody {
  LoginResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  final bool? success;
  final String? message;
  final Data? data;

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

@JsonSerializable(createToJson: false)
class Data {
  Data({required this.token, required this.refreshToken, required this.user});

  final String? token;

  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  final User? user;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(createToJson: false)
class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  final int? id;
  final String? name;
  final String? email;
  final String? phone;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
