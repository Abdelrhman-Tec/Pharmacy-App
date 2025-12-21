// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) =>
    CartResponseModel(
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String,
      data: CartData.fromJson(json['data'] as Map<String, dynamic>),
    );

CartData _$CartDataFromJson(Map<String, dynamic> json) => CartData(
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: _toDouble(json['total']),
  itemCount: (json['item_count'] as num).toInt(),
);

CartItem _$CartItemFromJson(Map<String, dynamic> json) => CartItem(
  id: (json['id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  price: _toDouble(json['price']),
  image: json['image'] as String,
  requirePrescription: (json['require_prescription'] as num).toInt(),
  subtotal: _toDouble(json['subtotal']),
);
