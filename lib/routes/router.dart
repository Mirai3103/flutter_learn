import 'package:flutter/material.dart';
import 'package:flutter_learn/features/auth/pages/login.dart';
import 'package:flutter_learn/routes/route_names.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Home Page'))),
        );
      case RouteNames.login:
        return MaterialPageRoute(
          builder: (context) =>
              const LoginPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('404'))),
        );
    }
  }
}
