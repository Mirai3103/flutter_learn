import 'package:flutter_learn/features/products/models/product_model.dart';

abstract class CartEvent {
  const CartEvent();
}

class CartItemAdded extends CartEvent {
  final ProductModel product;

  const CartItemAdded(this.product);
}

class CartItemRemoved extends CartEvent {
  final int productId;

  const CartItemRemoved(this.productId);
}

class CartItemQuantityUpdated extends CartEvent {
  final int productId;
  final int quantity;

  const CartItemQuantityUpdated({
    required this.productId,
    required this.quantity,
  });
}

class CartCleared extends CartEvent {
  const CartCleared();
}
