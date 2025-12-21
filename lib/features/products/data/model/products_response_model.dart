import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable(createToJson: false)
class ProductsModel {
  ProductsModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  @JsonKey(name: 'status_code')
  final int? statusCode;
  final String? message;
  final List<ProductModel>? data;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.categoryId,
    required this.requirePrescription,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.categoryName,
  });

  final int? id;
  final String? name;
  final String? description;
  final String? price;
  final int? quantity;

  @JsonKey(name: 'category_id')
  final int? categoryId;

  @JsonKey(name: 'require_prescription')
  final int? requirePrescription;
  final String? image;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @JsonKey(name: 'category_name')
  final String? categoryName;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
