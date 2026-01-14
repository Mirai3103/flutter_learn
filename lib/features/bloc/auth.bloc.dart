import 'package:bloc/bloc.dart';
import 'package:flutter_learn/features/auth/repository/auth_repository.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/bloc/auth.state.dart';
import 'package:flutter_learn/storages/local_store.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(AuthRepository authRepository)
    : _authRepository = authRepository,
      super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<RecoverSessionEvent>(_onRecoverSession);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final user = await _authRepository.login(event.username, event.password);
    if (user.isSuccess && user.data != null) {
      LocalStore.setString('token', user.data!.token);
      emit(Authenticated(user.data!.user));
    } else {
      emit(AuthError('Invalid username or password'));
    }
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await LocalStore.remove('token');
    emit(Unauthenticated());
  }

  Future<void> _onRecoverSession(
    RecoverSessionEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    final token = await LocalStore.getString('token');
    if (token != null) {
      final user = await _authRepository.getCurrentUser(token);
      if (user.isSuccess && user.data != null) {
        emit(Authenticated(user.data!));
        return;
      }
    }
    emit(Unauthenticated());
  }
}
