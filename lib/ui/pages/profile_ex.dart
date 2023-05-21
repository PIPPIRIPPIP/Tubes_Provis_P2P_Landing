import 'package:flutter/material.dart';

import 'package:myapp/models/user_model.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  ProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(child: Text('Welcome ${user.nama}!')),
    );
  }
}