import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/routes/route_names.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/view_model/controller/login/login_model_response.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/view_model/controller/user_preference/users_prefrences.dart';

import '../../../data/reporsitory/login_reporsitory/login_reporsitory.dart';
import '../../../utils/utils.dart';

class LoginControllerMV extends GetxController{

  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  final phoneFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  final _api = LoginReporsitory();

  UsersPreference usersPreference = UsersPreference();





  GlobalKey<FormState> formKey = GlobalKey();
  RxBool loading = false.obs;

  String? phoneValidation(String? value) {
    if (value == null || value.isEmpty) {

      return 'Please enter phone number';
    }
    // Check if the input contains only digits
    final isDigitsOnly = RegExp(r'^\d+$').hasMatch(value);
    if (!isDigitsOnly) {

      return 'Phone number must contain only digits';
    }
    // Check if the input is exactly 10 digits (common for many countries)
    if (value.length != 11) {

      return 'Phone number must be exactly 11 digits';
    }

    return null;
  }

  String? passwordValidation(String? value) {

    if (value == null || value.isEmpty) {

      return 'Please enter a password';

    }
    if (value.length < 6) {

      return 'Password must be at least 6 characters long';
    }

    return null;
  }


  void loginAPI(){

    loading.value = true;



    try {
      if (formKey.currentState?.validate() == true) {
        Map data = {
          "phone": phoneController.value.text,
          "password": passwordController.value.text,
        };

        _api.loginApi(data).then((value){
          // Get.snackbar("MyApp!", "Processing Data",backgroundColor: Colors.cyan,colorText: Colors.white);
          loading.value = false;
          usersPreference.saveUser(LoginResponseModel.fromJson(value)).then((value){
            Get.offAllNamed(RouteName.homeScreen);
            Utils.successToastMessage("Successful Login");


          }).onError((error, stackTrace){

          });

        }).onError((error,stackTrace){
          loading.value = false;
          Utils.errorToastMessage("Please check phone and password");
          print("Please check phone and password");
        });
      }
    } catch (e) {
      e.toString();
      loading.value = false;
    }
  }

}