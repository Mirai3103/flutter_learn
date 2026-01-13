import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/cart/bloc/cart_bloc.dart';
import 'package:flutter_learn/routes/route_names.dart';
import 'package:flutter_learn/routes/router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CartBloc()),
        BlocProvider(
          create: (context) {
            final authBloc = AuthBloc(AuthService());
            authBloc.add(RecoverSessionEvent());
            return authBloc;
          },
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: RouteNames.login,
      ),
    );
  }
}
