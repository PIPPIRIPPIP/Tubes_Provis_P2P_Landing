import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/user_model.dart';

// temporary untuk get data local json
import 'package:flutter/services.dart';

//** DATA */
String jsonString = """{"users":[{"nama":"Andi","nik":"1234567890","nomor_ponsel":"081234567890","alamat":"Jl. Contoh Alamat No. 1","email":"andi@example.com","password":"hashed_password","jenis_usaha":"Pertanian","provinsi_usaha":"Jawa Barat","kota_usaha":"Bandung","pendapatan":100000000,"riwayat_transaksi":[{"id":1,"jenis":"Pengisian Saldo","jumlah":50000000,"tanggal":"2023-05-01"},{"id":2,"jenis":"Pencairan Pinjaman","jumlah":-30000000,"tanggal":"2023-05-10"}]},{"nama":"Budi","nik":"0987654321","nomor_ponsel":"082345678901","alamat":"Jl. Contoh Alamat No. 2","email":"budi@example.com","password":"hashed_password","jenis_usaha":"Perdagangan","provinsi_usaha":"Jawa Timur","kota_usaha":"Surabaya","pendapatan":80000000,"riwayat_transaksi":[{"id":1,"jenis":"Pengisian Saldo","jumlah":40000000,"tanggal":"2023-05-02"},{"id":2,"jenis":"Penarikan Saldo","jumlah":-20000000,"tanggal":"2023-05-12"}]},{"nama":"Cindy","nik":"5678901234","nomor_ponsel":"083456789012","alamat":"Jl. Contoh Alamat No. 3","email":"cindy@example.com","password":"hashed_password","jenis_usaha":"Industri","provinsi_usaha":"Jakarta","kota_usaha":"Jakarta Selatan","pendapatan":120000000,"riwayat_transaksi":[{"id":1,"jenis":"Pengisian Saldo","jumlah":60000000,"tanggal":"2023-05-03"},{"id":2,"jenis":"Pengisian Saldo","jumlah":5000000,"tanggal":"2023-05-15"}]},{"nama":"Dian","nik":"4321098765","nomor_ponsel":"084567890123","alamat":"Jl. Contoh Alamat No. 4","email":"dian@example.com","password":"hashed_password","jenis_usaha":"Fashion","provinsi_usaha":"Bali","kota_usaha":"Denpasar","pendapatan":60000000,"riwayat_transaksi":[{"id":1,"jenis":"Pengisian Saldo","jumlah":30000000,"tanggal":"2023-05-04"},{"id":2,"jenis":"Penarikan Saldo","jumlah":-10000000,"tanggal":"2023-05-18"}]},{"nama":"Eva","nik":"9012345678","nomor_ponsel":"085678901234","alamat":"Jl. Contoh Alamat No. 5","email":"eva@example.com","password":"hashed_password","jenis_usaha":"Kuliner","provinsi_usaha":"Yogyakarta","kota_usaha":"Yogyakarta","pendapatan":150000000,"riwayat_transaksi":[{"id":1,"jenis":"Pengisian Saldo","jumlah":75000000,"tanggal":"2023-05-05"},{"id":2,"jenis":"Pencairan Pinjaman","jumlah":-50000000,"tanggal":"2023-05-20"}]}]}""";

//** EVENT */
// Event parent
abstract class DataEvent {}

// Event untuk memulai pengambilan data
class FetchDataEvent extends DataEvent {}

// Event ketika data sudah selesai diambil
class DataSiapEvent extends DataEvent {
  late List<User> users;
  DataSiapEvent(List<User> usersData) : users = usersData;
}

//** STATE */

//** BLOC */
class UserBloc extends Bloc<DataEvent, List<User>> {
  UserBloc() : super([]) {
    on<FetchDataEvent>((event, emit) {
      fetchData();
    });
    on<DataSiapEvent>((event, emit) {
      emit(event.users);
    });
  }

  // variabel utk menyimpan hasil parsing json
  void setFromJson(Map<String, dynamic> json) {
    List<User> usersData = [];

    if (json['users'] != null) {
      for (var userData in json['users']) {
        // List<RiwayatTransaksi> riwayatTransaksi = [];
        // if (userData['riwayat_transaksi'] != null) {
        //   for (var transaksiData in userData['riwayat_transaksi']) {
        //     riwayatTransaksi.add(RiwayatTransaksi.fromJson(transaksiData));
        //   }
        // }

        User user = User.fromJson(userData);
        usersData.add(user);
      }
    }

    add(DataSiapEvent(usersData));
  }

  //** API */
  // url data users
  String url = "https://example.com/users";

  // parsing to json dengan API
  void fetchData() async {
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      // setFromJson(jsonDecode(response.body));
      setFromJson(jsonDecode(jsonString));
    } 
    else {
      throw Exception('Gagal memuat data');
    }
  }

//** ================================================== */

  // Membaca isi file JSON
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
    // path data json
    String filePath = 'lib/data/users.json';
    String jsonString = await readJsonFile(filePath);

    // Parsing JSON
    try {
      setFromJson(jsonDecode(jsonString));
    } catch (e) {
      print('Gagal parsing JSON: $e');
    }
  }

}