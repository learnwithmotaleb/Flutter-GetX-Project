import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchController extends GetxController{

  RxBool isBool = false.obs;
  Color textColor = Colors.black;

  setNotification(bool value){
    isBool.value = value;
    print(isBool.value);

  }


}