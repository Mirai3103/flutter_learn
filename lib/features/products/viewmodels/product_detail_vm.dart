import 'package:flutter/material.dart';

class ProductDetailVm extends ChangeNotifier {
  int _quantity = 1;

  int get quantity => _quantity;

  void setQuantity(int newQuantity) {
    _quantity = newQuantity;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }

  void increaseQuantity() {
    print('Increasing quantity from $_quantity to ${_quantity + 1}');
    _quantity++;
    notifyListeners();
  }
}
