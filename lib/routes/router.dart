import 'package:flutter/material.dart';
import 'package:flutter_learn/features/auth/pages/login.dart';
import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/pages/home_page.dart';
import 'package:flutter_learn/features/products/pages/product_detail_page.dart';
import 'package:flutter_learn/features/products/services/product_service.dart';
import 'package:flutter_learn/routes/route_names.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (context) => HomePage(productService: ProductService()),
        );
      case RouteNames.login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case RouteNames.productDetail:
        final product = settings.arguments as ProductModel;
        return MaterialPageRoute(
          builder: (context) => ProductDetailPage(product: product),
        );
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('404'))),
        );
    }
  }
}
