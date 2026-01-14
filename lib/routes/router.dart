import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learn/features/auth/pages/login.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.state.dart';
import 'package:flutter_learn/features/cart/pages/cart_page.dart';
import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/pages/home_page.dart';
import 'package:flutter_learn/features/products/pages/product_detail_page.dart';
import 'package:flutter_learn/routes/route_names.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _sub;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    _sub = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}

GoRouter createRouter(AuthBloc authBloc) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: RouteNames.home,

    refreshListenable: GoRouterRefreshStream(authBloc.stream),

    redirect: (context, state) {
      final loggedIn = authBloc.state is Authenticated;
      final isLoggingIn = state.matchedLocation == RouteNames.login;

      if (!loggedIn && !isLoggingIn) return RouteNames.login;
      if (loggedIn && isLoggingIn) return RouteNames.home;
      return null;
    },

    routes: [
      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RouteNames.cart,
        builder: (context, state) => const CartPage(),
      ),
      GoRoute(
        path: RouteNames.productDetail,
        builder: (context, state) {
          final product = state.extra as ProductModel;
          return ProductDetailPage(product: product);
        },
      ),
    ],
  );
}
