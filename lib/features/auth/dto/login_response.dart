
class UserResponse {
  final String name;
  final String email;
  final bool emailVerified;
  final String? image;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String role;
  final String id;

  UserResponse({
    required this.name,
    required this.email,
    required this.emailVerified,
    this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.role,
    required this.id,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      name: json['name'],
      email: json['email'],
      emailVerified: json['emailVerified'],
      image: json['image'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      role: json['role'],
      id: json['id'],
    );
  }
}

class LoginResponse {
  final String token;
  final UserResponse user;

  LoginResponse({
    required this.token,
    required this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'],
      user: UserResponse.fromJson(json['user']),
    );
  }
}