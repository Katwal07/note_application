import 'dart:convert';

import 'package:note_application/core/constants/app_urls.dart';
import 'package:note_application/module/auth/login/data/model/login_models.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  static Future<AuthenticatedUser?> login(
      String username, String password) async {
    try {
      final response = await http.post(Uri.parse(AppUrls.login), body: {
        'username': username,
        'password': password,
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);

        print(decodedResponse);
        if (decodedResponse is Map<String, dynamic> &&
            decodedResponse.containsKey('accessToken')) {
          AuthenticatedUser user = AuthenticatedUser(
            username: username,
            userId: decodedResponse['id'],
            accessToken: decodedResponse['accessToken'],
          );
          return user;
        } else {
          throw Exception('Token not found in response');
        }
      } else {
        print('Login failed with status: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error during login: $e');
      return null;
    }
  }
}
