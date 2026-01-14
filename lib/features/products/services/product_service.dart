import 'dart:convert';
import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static const String baseUrl = 'https://fakestoreapi.com';

  Future<List<ProductModel>> getProducts({
    int take = 5,
    int skip = 0,
    String q = "",
  }) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final parsed = data.map((json) => ProductModel.fromJson(json)).toList();
        List<ProductModel> filtered = parsed
            .where(
              (product) =>
                  product.title.toLowerCase().contains(q.toLowerCase()) ||
                  product.description.toLowerCase().contains(q.toLowerCase()),
            )
            .skip(skip)
            .take(take)
            .toList();
        return filtered;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }

  Future<ProductModel> getProductById(int id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products/$id'));
      if (response.statusCode == 200) {
        return ProductModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load product');
      }
    } catch (e) {
      throw Exception('Error fetching product: $e');
    }
  }
}
