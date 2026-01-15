import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/auth/repository/auth_repository.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/cart/bloc/cart_bloc.dart';
import 'package:flutter_learn/features/products/bloc/home.cubit.dart';
import 'package:flutter_learn/features/products/repository/product_repository.dart';
import 'package:flutter_learn/features/products/services/product_service.dart';
import 'package:flutter_learn/features/products/viewmodels/product_detail_vm.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_bloc.dart';
import 'package:flutter_learn/features/quiz/repository/quiz_repository.dart';
import 'package:flutter_learn/features/quiz/services/quiz_service.dart';
import 'package:flutter_learn/routes/router.dart';
import 'package:flutter_learn/shareds/api_client/graphql.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final productService = ProductService(graphQLClient: client.value);
    final productRepository = ProductRepository(productService: productService);
    final quizService = QuizService();
    final quizRepository = QuizRepository(quizService: quizService);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()),
        BlocProvider(
          create: (_) {
            final authBloc = AuthBloc(AuthRepository(AuthService()));
            authBloc.add(RecoverSessionEvent());
            return authBloc;
          },
        ),
        BlocProvider(create: (_) => HomeCubit(productRepository)..initialize()),
        BlocProvider(create: (context) => QuizBloc(quizRepository)),
      ],
      child: Builder(
        builder: (context) {
          final router = createRouter(context.read<AuthBloc>());

          return ChangeNotifierProvider(
            create: (_) => ProductDetailVm(),
            builder: (context, child) => MaterialApp.router(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.lightBlue,
                useMaterial3: true  ,
                textTheme: GoogleFonts.poppinsTextTheme(),
              ),
              routerConfig: router,
            ),
          );
        },
      ),
    );
  }
}
