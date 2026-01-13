import 'package:flutter_learn/features/auth/models/user_model.dart';

class AuthState {}

class AuthInitial extends AuthState {}

class Unauthenticated extends AuthState {}

class AuthLoading extends AuthState {}

class Authenticated extends AuthState {
  final UserModel user;
  Authenticated(this.user);
}
