import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.state.dart';
import 'package:flutter_learn/routes/route_names.dart';
import 'package:go_router/go_router.dart';

class WithAuthGuard extends StatelessWidget {
  final Widget child;

  const WithAuthGuard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case Unauthenticated():
            context.go(RouteNames.login);
          case AuthError():
            context.go(RouteNames.login);
          default:
            break;
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Authenticated) {
            return child;
          } else if (state is AuthLoading || state is AuthInitial) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
