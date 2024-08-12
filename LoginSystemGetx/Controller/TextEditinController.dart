import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TextEditingControllerGetX extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response =
      await http.post(Uri.parse("https://reqres.in/api/register"), body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar("Login Success", data['error']);
        loading.value = false;


      }else{
        Get.snackbar("Login Fail", data['error']);
        loading.value = false;


      }

    } catch (e) {
      Get.snackbar("Exception ", e.toString());
      loading.value = false;
    }


  }

  void updateApi() async {
    loading.value = true;
    try {

      Map rowForm = {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      };
      //body:  jsonEncode(rowForm);

      final response =
      await http.post(Uri.parse("https://reqres.in/api/register"),
          //body: jsonEncode(rowForm);
          body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar("Login Success", data['error']);
        loading.value = false;


      }else{
        Get.snackbar("Login Fail", data['error']);
        loading.value = false;


      }

    } catch (e) {
      Get.snackbar("Exception ", e.toString());
      loading.value = false;
    }


  }
}
