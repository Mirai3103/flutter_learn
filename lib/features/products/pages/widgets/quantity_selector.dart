import 'package:flutter/material.dart';
import 'package:flutter_learn/features/products/viewmodels/product_detail_vm.dart';
import 'package:provider/provider.dart';

class QuantitySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productDetailVm = context.watch<ProductDetailVm>();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: productDetailVm.decreaseQuantity,
        ),
        Text(
          '${productDetailVm.quantity}',
          style: const TextStyle(fontSize: 16),
        ),
        IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: productDetailVm.increaseQuantity,
        ),
      ],
    );
  }
}
