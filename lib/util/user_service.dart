import 'package:dio/dio.dart'; // Tambahkan import package Dio
import 'package:testi/model/user_model.dart';

class UserService {
  final Dio _dio = Dio();
  static const _baseUrl = 'https://reqres.in/api';
  static const _users = '/users'; // Perbaikan: tambahkan '/' untuk endpoint

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await _dio.get(
        '$_baseUrl$_users',
        queryParameters: {
          'page': 1,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'] as List; // Jelaskan bahwa data berupa list
        List<UserModel> users = data.map((user) => UserModel.fromJson(user)).toList();
        return users;
      }
      throw Exception('Failed to load users');
    } catch (e) {
      rethrow; // Mempertahankan kesalahan agar bisa dideteksi di atas
    }
  }
}
