import 'dart:convert';

import 'package:get/get.dart';
import 'package:task/components/constant.dart';
import 'package:http/http.dart' as http;

import '../models/model.dart';

class RegisterService {
  Future registerAccount(
    email,
    password,
    name,
    phone,
    confirmPassword,
    countryCode,
  ) async {
    Map<String, String> headers = <String, String>{
      'Accept':'application/json',
      'Content-Type': 'application/json',
    };
    print(headers);
    // var url = Uri.parse('${Constant.mainLink}user/register');
    var url = Uri.parse('http://testapi.alifouad91.com/api/user/register');
    Map body = {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'country_code': countryCode,
      'password_confirm': confirmPassword,
    };
    http.Response response = await http.post(
      url,
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'country_code': countryCode,
        'password_confirm': confirmPassword,
      }),
      headers:<String,String>{
        // 'Accept':'application/json',
        'Content-Type': 'application/json',
      },
    );
    print(response.body);
    print('status code ${response.statusCode}');

    if (response.statusCode == 201 || response.statusCode==200) {
      var jsonResponse = jsonDecode(response.body);
      print('json response = $jsonResponse');
      return Model.fromMap(jsonDecode(response.body));

      print('json response = ${jsonResponse}');
      // SaveData.save(Constants.TOKEN,response.data['token']);
      // SaveData.save(Constants.IDUESRME.toString(),response.data['user']['id']);
      // print(SaveData.get(Constants.TOKEN));
      // print(SaveData.get(Constants.IDUESRME));
      Get.snackbar('', 'register account successful');
      Get.toNamed('/home');
      //  Get.offAll(() => PostsScreen(), binding: LoginBindingTest());
      // Get.toNamed('/home');
    }
    // else if (response.statusCode == 400) {
    //   Get.snackbar('connect error', "response.data['message']");
     else {
      Get.snackbar('connect error', 'register account failed');
    }
  }

}
