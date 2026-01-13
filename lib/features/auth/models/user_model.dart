class UserModel {
  final String id;
  final String username;
  final String email;
  final String password;
  final String? avatarUrl;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    this.avatarUrl,
  });

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email)';
  }
}
