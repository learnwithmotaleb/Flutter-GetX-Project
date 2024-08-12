import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;

class LoginControllerM extends GetxController {

  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  GlobalKey<FormState> formKey = GlobalKey();
  RxBool loading = false.obs;

  void loginAPI() async {
    loading.value = true;

    try {
      if (formKey.currentState?.validate() == true) {
        Map loginBody = {
          "email": emailController.value.text.toString(),
          "password": passwordController.value.text.toString()
        };

        var url = "https://reqres.in/api/login";
        final response = await http.post(Uri.parse(url),
            body: jsonEncode(loginBody)
        );
        var data = jsonDecode(response.body.toString());

        if (response.statusCode == 200) {
          loading.value = false;

          print(response.statusCode.toString());
          print(data);
          Get.snackbar(
              "Testing Getx App", "Login Success",
              backgroundColor: Colors.green,
              snackPosition: SnackPosition.BOTTOM);
        } else {
          loading.value = false;
          print(response.statusCode.toString());
          print(data);
          Get.snackbar(
              "Testing Getx App", "Login Failed",
              backgroundColor: Colors.red,
              snackPosition: SnackPosition.BOTTOM);
        }
      }
    } catch (e) {
      loading.value = false;
      e.toString();
    }
  }


}