import 'package:flutter_learn/features/products/models/product_model.dart';

abstract class CartEvent {
  const CartEvent();
}

class CartItemAdded extends CartEvent {
  final ProductModel product;
  final int quantity;

  const CartItemAdded(this.product, this.quantity );
}

class CartItemRemoved extends CartEvent {
  final String productId;

  const CartItemRemoved(this.productId);
}

class CartItemQuantityUpdated extends CartEvent {
  final String productId;
  final int quantity;

  const CartItemQuantityUpdated({
    required this.productId,
    required this.quantity,
  });
}

class CartCleared extends CartEvent {
  const CartCleared();
}
