import 'package:flutter/material.dart';
import 'package:testi/model/user_model.dart';
import 'package:testi/util/user_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> listUser = <UserModel>[];
  final UserService _userService = UserService(); // Buat instance UserService

  @override
  void initState() {
    super.initState();
    getDataUser();
  }

  Future<void> getDataUser() async {
    try {
      List<UserModel> listUserTemp = await _userService.fetchUser(); // Gunakan instance service
      if (listUserTemp.isNotEmpty) {
        setState(() {
          listUser = listUserTemp;
        });
      }
    } catch (e) {
      // Tambahkan penanganan error
      debugPrint('Error fetching users: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Tambahkan AppBar untuk navigasi
        title: const Text('User List'),
      ),
      body: SafeArea(
        child: listUser.isEmpty // Tambahkan indikator loading
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemCount: listUser.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                itemBuilder: (context, index) => ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      listUser[index].avatar,
                      width: 52.0,
                      height: 52.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    '${listUser[index].firstName} ${listUser[index].lastName}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    listUser[index].email,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(height: 0.0),
              ),
      ),
    );
  }
}
