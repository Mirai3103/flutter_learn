import 'package:bloc/bloc.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/bloc/auth.state.dart';
import 'package:flutter_learn/storages/local_store.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  AuthBloc(AuthService authService)
    : _authService = authService,
      super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<RecoverSessionEvent>(_onRecoverSession);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final user = await _authService.login(event.username, event.password);
    if (user != null) {
      LocalStore.setString('username', user.username);
      emit(Authenticated(user));
    } else {
      emit(AuthError('Invalid username or password'));
    }
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await LocalStore.remove('username');
    await _authService.logout();
    emit(Unauthenticated());
  }

  Future<void> _onRecoverSession(RecoverSessionEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    
    final username = await LocalStore.getString('username');
    if (username != null) {
      final user = await _authService.getCurrentUser(username);
      if (user != null) {
        emit(Authenticated(user));
        return;
      }
    }
    emit(Unauthenticated());
  }
}
