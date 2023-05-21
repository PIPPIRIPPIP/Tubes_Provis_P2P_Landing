import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/user_model.dart';

// temporary untuk get data local json
import 'package:flutter/services.dart';

class UserRepository {
  final String url;
  final String filePath;

  UserRepository({required this.url, required this.filePath});

  Future<List<User>> _fetchUsers() async {
    // Fetch data from API
    // final response = await http.get(Uri.parse(url));
    // if (response.statusCode == 200) {
    //   return List<Map<String, dynamic>>.from(jsonDecode(response.body))
    //       .map((data) => User.fromJson(data))
    //       .toList();
    // } else {
    //   throw Exception('Failed to load data from API');
    // }

    // Or fetch data from local JSON file
    final jsonString = await rootBundle.loadString(filePath);
    final jsonData = jsonDecode(jsonString);
    final usersData = List<User>.from(jsonData['users']?.map((x) => User.fromJson(x)) ?? []);
    return usersData;
  }

  Future<User> authenticate({
    required String email,
    required String password,
  }) async {
    final users = await _fetchUsers();
    final user = users.firstWhere(
      (user) => user.email == email && user.password == password,
      orElse: () => throw Exception('Invalid email or password'),
    );

    return user;
  }
}
