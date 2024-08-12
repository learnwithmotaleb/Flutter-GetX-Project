import 'dart:async';

import 'package:get/get.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/routes/route_names.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/view_model/controller/user_preference/users_prefrences.dart';

class SplashScreenServices {

  UsersPreference usersPreference = UsersPreference();


  void isLogin() {

    usersPreference.getUser().then((value){

      if(value.token!.isNotEmpty || value.token.toString() != "null"){
        Timer(const Duration(seconds: 2), () => Get.offAllNamed(RouteName.homeScreen));

      }else{
        Timer(const Duration(seconds: 2), () => Get.offAllNamed(RouteName.loginScreen));

      }
    });
  }
}
