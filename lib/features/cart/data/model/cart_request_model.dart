import 'package:json_annotation/json_annotation.dart';

part 'cart_request_model.g.dart';

@JsonSerializable()
class CartRequestModel {
  CartRequestModel({required this.productId, required this.quantity});

  @JsonKey(name: 'product_id')
  final int? productId;
  final int? quantity;

  Map<String, dynamic> toJson() => _$CartRequestModelToJson(this);
}

@JsonSerializable()
class CartUpdateRequestModel {
  CartUpdateRequestModel({required this.cartItemId, required this.quantity});

  @JsonKey(name: 'cart_item_id')
  final int? cartItemId;
  final int? quantity;

  Map<String, dynamic> toJson() => _$CartUpdateRequestModelToJson(this);
}
