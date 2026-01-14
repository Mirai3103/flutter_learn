import 'package:flutter_learn/features/auth/dto/login_response.dart';
import 'package:flutter_learn/features/auth/models/user_model.dart';
import 'package:flutter_learn/features/auth/services/auth.dart';
import 'package:flutter_learn/shareds/models/Result.dart';

class AuthRepository {
  final AuthService authService;
  AuthRepository(this.authService);
  Future<Result<LoginResponseModel?>> login(
    String username,
    String password,
  ) async {
    try {

    final res = await authService.login(username, password);
    if (res == null) {
      return Result.fail("Login failed");
    }
    final loginResponseModel = LoginResponseModel(
      token: res.token,
      user: UserModel(
        id: res.user.id,
        username: res.user.name,
        email: res.user.email,
        password: "",
        avatarUrl: res.user.image,
      ),
    );
    return Result.ok(loginResponseModel);
          
    } catch (e) {
      return Result.fail("Login failed: ${e.toString()}"); 
    }
  }

  Future<Result<UserModel?>> getCurrentUser(String jwt) async {
    final res = await authService.getCurrentUser(jwt);
    if (res == null) {
      return Result.fail("Failed to fetch user");
    }
    final userModel = UserModel(
      id: res.id,
      username: res.name,
      email: res.email,
      password: "",
      avatarUrl: res.image,
    );
    return Result.ok(userModel);
  }
}
