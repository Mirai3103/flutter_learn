

import 'package:flutter_learn/features/cart/models/cart_item_model.dart';

abstract class CartState {
  const CartState();
}

class CartInitial extends CartState {
  const CartInitial();
}

class CartLoaded extends CartState {
  final List<CartItemModel> items;

  const CartLoaded(this.items);

  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);

  double get totalPrice {
    return items.fold(0.0, (sum, item) => sum + item.totalPrice);
  }
}
