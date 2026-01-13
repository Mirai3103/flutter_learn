import 'package:flutter_learn/features/auth/models/user_model.dart';

class AuthService {
  // Authentication service implementation
  static final Map<String, UserModel> _users = {
    'user1': UserModel(
      id: '1',
      username: 'user1',
      email: 'user1@gmail.com',
      password: 'password123',
      avatarUrl: null,
    ),
  };

  Future<UserModel?> login(String username, String password) async {
    final user = _users[username];
    await Future.delayed(const Duration(seconds: 1));
    if (user != null && user.password == password) {
      return user;
    }
    return null;
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
  }
  Future<UserModel?> getCurrentUser(String username) async {
    await Future.delayed(const Duration(seconds: 2));
    return _users[username];
  }
}