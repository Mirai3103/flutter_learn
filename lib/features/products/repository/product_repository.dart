import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/services/product_service.dart';

class ProductRepository {
  final ProductService productService;
  ProductRepository({required this.productService});

  Future<List<ProductModel>> fetchProducts({
    int take = 5,
    int skip = 0,
    String q = "",
  }) async {
    return await productService.getProducts(
      take: take,
      skip: skip,
      q: q,
    );
  }
  Future<ProductModel> fetchProductById(int id) async {
    return await productService.getProductById(id);
  }
}
