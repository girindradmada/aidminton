import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://10.0.2.2:5000'; // No /api since you're using simple Flask

  static Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) return 'Login successful';
    return jsonDecode(response.body)['error'] ?? 'Login failed';
  }

  static Future<String> register(String name, String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': name,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) return 'User registered';
    return jsonDecode(response.body)['error'] ?? 'Registration failed';
  }

  static Future<String> logout() async {
    final response = await http.post(Uri.parse('$baseUrl/logout'));
    if (response.statusCode == 200) return 'Logged out';
    return 'Logout failed';
  }

  static Future<List<Map<String, dynamic>>> getInjuryLogs() async {
    final response = await http.get(Uri.parse('$baseUrl/injury_logs'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch injury logs');
    }
  }

  static Future<String> addInjuryLog(Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/injury_logs'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) return 'Injury log added';
    return jsonDecode(response.body)['error'] ?? 'Failed to add injury log';
  }

  static Future<List<Map<String, dynamic>>> getCommonInjuries() async {
    final response = await http.get(Uri.parse('$baseUrl/common_injuries'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load common injuries');
    }
  }

  static Future<List<Map<String, dynamic>>> getEmergencyContacts() async {
    final response = await http.get(Uri.parse('$baseUrl/emergency_contacts'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load emergency contacts');
    }
  }
}