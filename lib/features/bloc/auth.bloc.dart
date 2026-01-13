import 'package:bloc/bloc.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/bloc/auth.state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  AuthBloc(AuthService authService)
    : _authService = authService,
      super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final user = await _authService.login(event.username, event.password);
    if (user != null) {
      emit(Authenticated(user));
    } else {
      emit(Unauthenticated());
    }
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await _authService.logout();
    emit(Unauthenticated());
  }
}
