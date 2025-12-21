import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_body.g.dart';

@JsonSerializable(createToJson: false)
class RegisterResponseBody {
  RegisterResponseBody({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  @JsonKey(name: 'status_code')
  final int? statusCode;
  final String? message;
  final Data? data;

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseBodyFromJson(json);
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

  final String? id;
  final String? name;
  final String? email;
  final String? phone;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
