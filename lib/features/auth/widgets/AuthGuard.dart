import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.state.dart';

class WithAuthGuard extends StatelessWidget {
  final Widget child;

  const WithAuthGuard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case Unauthenticated():
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/login', (route) => false);
          case AuthError():
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/login', (route) => false);
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
