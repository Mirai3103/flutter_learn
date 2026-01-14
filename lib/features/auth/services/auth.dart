import 'dart:convert';

import 'package:flutter_learn/features/auth/dto/login_response.dart';
import 'package:flutter_learn/features/auth/models/user_model.dart';
// http
import 'package:http/http.dart' as http;

class AuthService {
  static final String baseUrl = "http://10.0.2.2:3000/api";
  Future<LoginResponse?> login(String username, String password) async {
    final payload = {"email": username, "password": password};
    final response = await http.post(
      Uri.parse('$baseUrl/users/login'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(payload),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return LoginResponse.fromJson(data);
    } else {
      throw Exception("Failed to login");
    }
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  Future<UserResponse?> getCurrentUser(String jwt) async {
    final response = await http.get(
      Uri.parse('$baseUrl/user/me'),
      headers: {'Accept': 'application/json', 'Authorization': "Bearer $jwt"},
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return UserResponse.fromJson(data);
    } else {
      return null;
    }
  }
}
