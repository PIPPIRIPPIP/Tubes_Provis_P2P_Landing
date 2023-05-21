import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:equatable/equatable.dart';

import '../models/user_model.dart';

// temporary untuk get data local json
import 'package:flutter/services.dart';

//** EVENT */
// Event parent
abstract class DataEvent {}

// Event to initiate data fetching
class FetchDataEvent extends DataEvent {}

// Event when data has been fetched
class DataReadyEvent extends DataEvent {
  late List<User> users;
  DataReadyEvent(List<User> usersData) : users = usersData;
}

//** STATE */
// State representing the list of users
class UserState extends Equatable {
  final List<User> users;

  UserState(this.users);

  @override
  List<Object?> get props => [users];
}

//** BLOC */
class UserBloc extends Bloc<DataEvent, UserState> {
  UserBloc() : super(UserState([])) {
    on<FetchDataEvent>((event, emit) async {
      String jsonString = await readJsonFile(filePath);
      try {
        // final response = await http.get(Uri.parse(url));
        // if (response.statusCode == 200) {
          print("masuk try catch");
          final jsonData = jsonDecode(jsonString);
          final usersData = List<User>.from(jsonData['users']?.map((x) => User.fromJson(x)) ?? []);
          emit(UserState(usersData));

        // } else {
        //   throw Exception('Failed to fetch data');
        // }
      } catch (error) {
        // Handle errors here
        print('Error: $error');
      }
    });
  }

  // variabel utk menyimpan hasil parsing json
  void setFromJson(Map<String, dynamic> json) {
    List<User> usersData = [];

    if (json['users'] != null) {
      for (var userData in json['users']) {

        User user = User.fromJson(userData);
        usersData.add(user);
      }
    }

    add(DataReadyEvent(usersData));
  }

  //** API */
  // url data users
  String url = "https://example.com/users";

  // path data json
  String filePath = 'data/user.json';

  // parsing to json dengan API
  void fetchData() async {
    final response = await http.get(Uri.parse(url));
    // String jsonString = await readJsonFile(filePath);
    
    if (response.statusCode == 200) {
      // setFromJson(jsonDecode(response.body));
      // setFromJson(jsonDecode(jsonString));
    } 
    else {
      throw Exception('Gagal memuat data');
    }
  }

//** ================================================== */

  // Membaca isi file JSON local
  Future<String> readJsonFile(String filePath) async {
    try {
      String jsonString = await rootBundle.loadString(filePath);
      return jsonString;
    } catch (e) {
      throw Exception('Gagal membaca file JSON: $e');
    }
  }

  // parsing dari data local to json
  void fetchDataLocal() async {
    String jsonString = await readJsonFile(filePath);

    // Parsing JSON
    try {
      // setFromJson(jsonDecode(jsonString));
    } catch (e) {
      print('Gagal parsing JSON: $e');
    }
  }

}