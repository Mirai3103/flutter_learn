import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/cart/bloc/cart_bloc.dart';
import 'package:flutter_learn/routes/router.dart'; // nơi có createRouter()

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()),
        BlocProvider(
          create: (_) {
            final authBloc = AuthBloc(AuthService());
            authBloc.add(RecoverSessionEvent());
            return authBloc;
          },
        ),
      ],
      child: Builder(
        builder: (context) {
          final authBloc = context.read<AuthBloc>();
          final router = createRouter(authBloc);

          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: ThemeData(primarySwatch: Colors.indigo),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
