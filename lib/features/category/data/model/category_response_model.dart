import 'package:json_annotation/json_annotation.dart';

part 'category_response_model.g.dart';

@JsonSerializable(createToJson: false)
class CategoriesResponseModel {
  const CategoriesResponseModel({this.statusCode, this.message, this.data});

  @JsonKey(name: 'status_code')
  final int? statusCode;
  final String? message;
  final List<CategoryModel>? data;

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class CategoryModel {
  const CategoryModel({
    required this.id,
    this.name,
    this.image,
    this.createdAt,
  });

  final int id;
  final String? name;
  final String? image;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
