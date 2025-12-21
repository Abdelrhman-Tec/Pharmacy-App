// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => ProductsResponseModel(
  statusCode: (json['status_code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  price: json['price'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  categoryId: (json['category_id'] as num?)?.toInt(),
  requirePrescription: (json['require_prescription'] as num?)?.toInt(),
  image: json['image'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  categoryName: json['category_name'] as String?,
);
