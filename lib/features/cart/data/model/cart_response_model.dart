import 'package:json_annotation/json_annotation.dart';
part 'cart_response_model.g.dart';

@JsonSerializable(createToJson: false)
class CartResponseModel {
  CartResponseModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  @JsonKey(name: 'status_code')
  final int statusCode;

  final String message;
  final CartData data;

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class CartData {
  CartData({required this.items, required this.total, required this.itemCount});

  final List<CartItem> items;

  @JsonKey(fromJson: _toDouble)
  final double total;

  @JsonKey(name: 'item_count')
  final int itemCount;

  factory CartData.fromJson(Map<String, dynamic> json) =>
      _$CartDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class CartItem {
  CartItem({
    required this.id,
    required this.productId,
    required this.quantity,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.requirePrescription,
    required this.subtotal,
  });

  final int id;

  @JsonKey(name: 'product_id')
  final int productId;

  final int quantity;
  final String name;
  final String description;

  @JsonKey(fromJson: _toDouble)
  final double price;

  final String image;

  @JsonKey(name: 'require_prescription')
  final int requirePrescription;

  @JsonKey(fromJson: _toDouble)
  final double subtotal;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

double _toDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  return double.parse(value.toString());
}
