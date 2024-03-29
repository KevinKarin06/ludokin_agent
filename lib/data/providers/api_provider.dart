import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../models/user.dart';


class ApiProvider{
  final String baseUrl = 'http://192.168.100.20:80/api';
  final box = GetStorage();

  Future<http.Response> login(Object data) async {
    final Uri url = Uri.parse('$baseUrl/users/login');
    http.Response response = await http.post(url, body: data).timeout(
      const Duration(
        seconds: 10,
      ),
    );
    return response;
  }
  Future<http.Response> register(User user) async {
    final Uri url = Uri.parse('$baseUrl/users');
    var data = {
      'name': user.name,
      'email': user.email,
      'password': user.password,
      'numero_CNI': user.numeroCni,
      'date_de_naissance': user.dateDeNaissance,
      'numero_commercial': user.numeroCommercial,
      'localisation': user.localisation,
      'user_code': user.userCode,
      'parent_code': user.parentCode,
    };
    http.Response response = await http.post(url, body: data).timeout(
      const Duration(
        seconds: 20,
      ),
    );
    return response;
  }
 Future<http.Response> updateUser (Object data) async {
    final Uri uri = Uri.parse('$baseUrl/users/${box.read('id')}');
    var response = await http.put(uri , body: data).timeout(
      const Duration(
        seconds: 20
      )
    );
     return response ;
 }

}
