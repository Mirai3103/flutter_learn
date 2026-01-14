import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/services/product_service.dart';

class ProductRepository {
  final ProductService productService;
  ProductRepository({required this.productService});

  Future<List<ProductModel>> fetchProducts({
    int page = 1,
    int limit = 10,
    String q = "",
  }) async {
    final productsData = await productService.getProducts(
      limit: limit,
      page: page,
      q: q,
    );
    return productsData.listProducts.items.map((e) => ProductModel(
      id: e.id,
      title: e.title,
      price: double.parse(e.displayPrice),
      image: e.thumbnailUrl!,
      description: "",
      category: "",
      rating: Rating(rate: 4.4, count: 0),
    )).toList();
  }

  Future<ProductModel> fetchProductById(String id) async {
    final productData = await productService.getProductById(id);
    if (productData == null) {
      throw Exception("Product not found");
    }
    return ProductModel(
      id: productData.id,
      title: productData.title,
      price: double.parse(productData.displayPrice),
      description: productData.description,
      image: productData.thumbnailUrl!,
      category: id,
      rating: Rating(rate: 4.4, count: 0),
    );
  }
}
