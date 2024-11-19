import 'package:flutter/material.dart';

class UserModel {
  final int id; // id tidak nullable, jadi tidak perlu menggunakan `int?`
  final String avatar; // ubah menjadi non-nullable
  final String email; // ubah menjadi non-nullable
  final String firstName; // ubah menjadi non-nullable
  final String lastName; // ubah menjadi non-nullable

  const UserModel({
    required this.id,
    required this.avatar,
    required this.email,
    required this.firstName,
    required this.lastName,
  }); // Tambahkan titik koma

  // Perbaikan: parameter "json" tidak memerlukan nama opsional
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] ?? 0,
        avatar: json['avatar'] ?? "-",
        email: json['email'] ?? "-",
        firstName: json['first_name'] ?? "-",
        lastName: json['last_name'] ?? "-",
      );
}
