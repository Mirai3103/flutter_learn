import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/graphql/product/product_detail.graphql.dart';
import 'package:flutter_learn/graphql/product/product_list.graphql.dart';

// sửa type này theo đúng generated class của bạn:

extension ProductMapper on Query$ListProducts$listProducts$items {
  ProductModel toDomain() {
    return ProductModel(
      id: id,
      title: title,
      price: double.tryParse(displayPrice) ?? 0,
      image: thumbnailUrl ?? '',
      description: '',
      category: '',
    );
  }
}

extension ProductDetailMapper on Query$Product$product {
  ProductModel toDomain() {
    return ProductModel(
      id: id,
      title: title,
      price: double.tryParse(displayPrice) ?? 0,
      image: thumbnailUrl ?? '',
      description: description,
      category: '',
    );
  }
}
