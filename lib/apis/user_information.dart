import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:teslo_shop/apis/api_controller.dart';
import 'package:teslo_shop/models/login_model.dart';

class UserInformation {

  static Future<UserResponse> getUserLogin(String user , String pass) async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var data = json.encode({
      "Usuario": user,
      "Clave": pass
    });
    final url = Uri.parse('https://vmovil.coopsac.fin.ec/apigateway/api/coffeesac/usuarioCoffee/authenticate');
            var response = await http.post(url, headers: headers, body: data).timeout(
        const Duration(seconds: 3),
        onTimeout: () {
          throw Exception('Verifique su conexion');
        },
      );
     
      
      if (response.statusCode == 200) {
        return UserResponse.fromJson(json.decode(response.body));
      } else {
        String errorMessage = getErrorMessage(response.statusCode);
        throw Exception(errorMessage);
      }
  }

  
  }
