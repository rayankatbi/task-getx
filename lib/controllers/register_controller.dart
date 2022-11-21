import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/components/constant.dart';
import 'package:http/http.dart' as http;

import '../models/model.dart';
import '../services/register_service.dart';

class RegisterController extends GetxController with StateMixin {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var isLoading = false.obs;

  RegisterService registerService = RegisterService();

  Future registerAccount({
    email,
    password,
    name,
    phone,
    confirmPassword,
    countryCode,
  }) async {
    Map<String, String> headers = <String, String>{
      // 'Accept':'application/json',
      'Content-Type': 'application/json',
    };
    print(headers);
     var url = Uri.parse('${Constant.mainLink}user/register');
    //var url = Uri.parse('http://testapi.alifouad91.com/api/user/register');
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
      }),
      headers:<String,String>{
         'Accept':'application/json',
        'Content-Type': 'application/json',
      },
    );

    print(jsonDecode(response.body));

    print('status code ${response.statusCode}');


    if (response.statusCode == 201 || response.statusCode==200) {
      var jsonResponse = jsonDecode(response.body);
      print('json response = $jsonResponse');

      return Model.fromMap(json.decode(jsonResponse));

    }
    // else if (response.statusCode == 400) {
    //   Get.snackbar('connect error', "response.data['message']");
    else {
      Get.snackbar('connect error', 'register account failed');
    }
  }

}
