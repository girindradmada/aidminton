import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl = 'http://10.0.2.2:5000'; // Use 127.0.0.1 if not using Android emulator

  Future<String> register(String username, String email, String password) async {
  final response = await http.post(
    Uri.parse('$baseUrl/users'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'username': username,
      'email': email,
      'password': password,
    }),
  );

  try {
    if (response.statusCode == 201) return 'User registered';
    return jsonDecode(response.body)['error'] ?? 'Registration failed';
  } catch (e) {
    print('⚠️ Unexpected response: ${response.statusCode}');
    print('⚠️ Body: ${response.body}');
    return 'Unexpected response: ${response.body}';
  }
}

  Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) return 'Login successful';
    return jsonDecode(response.body)['error'] ?? 'Login failed';
  }

  Future<String> logout() async {
    final response = await http.post(Uri.parse('$baseUrl/logout'));

    if (response.statusCode == 200) return 'Logged out';
    return 'Logout failed';
  }
}
