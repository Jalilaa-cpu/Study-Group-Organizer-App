import '../models/user.dart';

class AuthService {
  // Simulate login API call
  Future<User> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    
    if (email == "test@test.com" && password == "password123") {
      return User(
        id: "1",
        email: email,
        name: "Test User",
      );
    }
    throw Exception('Invalid credentials');
  }

  // Simulate signup API call
  Future<User> signup(String name, String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    
    return User(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      email: email,
      name: name,
    );
  }
}