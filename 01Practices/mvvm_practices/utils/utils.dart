import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Utils{


static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
  current.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

static toastMessage(String message){

  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.green,
  );

}
static errorToastMessage(String message){

  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      gravity: ToastGravity.CENTER
  );

}
static errorToastMessageBotton(String message){

  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      gravity: ToastGravity.BOTTOM
  );

}
static successToastMessage(String message){

  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.green,
      gravity: ToastGravity.CENTER
  );

}

static snackBar(String title, String message){
  Get.snackbar(
      title,
      message,
    backgroundColor: Colors.white

  );

}

}