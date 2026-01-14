import 'package:bloc/bloc.dart';

import 'package:flutter_learn/features/cart/bloc/cart_event.dart';
import 'package:flutter_learn/features/cart/bloc/cart_state.dart';
import 'package:flutter_learn/features/cart/models/cart_item_model.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitial()) {
    on<CartItemAdded>(_onCartItemAdded);
    on<CartItemRemoved>(_onCartItemRemoved);
    on<CartItemQuantityUpdated>(_onCartItemQuantityUpdated);
    on<CartCleared>(_onCartCleared);
  }

  void _onCartItemAdded(CartItemAdded event, Emitter<CartState> emit) {
    final currentState = state;
    List<CartItemModel> items;

    if (currentState is CartLoaded) {
      items = List.from(currentState.items);
      final existingIndex = items.indexWhere(
        (item) => item.product.id == event.product.id,
      );

      if (existingIndex >= 0) {
        items[existingIndex] = items[existingIndex].copyWith(
          quantity: items[existingIndex].quantity + 1,
        );
      } else {
        items.add(CartItemModel(product: event.product));
      }
    } else {
      items = [CartItemModel(product: event.product)];
    }

    emit(CartLoaded(items));
  }

  void _onCartItemRemoved(CartItemRemoved event, Emitter<CartState> emit) {
    final currentState = state;
    if (currentState is CartLoaded) {
      final items = currentState.items
          .where((item) => item.product.id != event.productId)
          .toList();
      emit(CartLoaded(items));
    }
  }

  void _onCartItemQuantityUpdated(
    CartItemQuantityUpdated event,
    Emitter<CartState> emit,
  ) {
    final currentState = state;
    if (currentState is CartLoaded) {
      final items = currentState.items.map((item) {
        if (item.product.id == event.productId) {
          return item.copyWith(quantity: event.quantity);
        }
        return item;
      }).toList();
      emit(CartLoaded(items));
    }
  }

  void _onCartCleared(CartCleared event, Emitter<CartState> emit) {
    emit(const CartLoaded([]));
  }
}
