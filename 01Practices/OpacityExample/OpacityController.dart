import 'package:get/get.dart';

class OpacityControllerM extends GetxController{


  RxDouble opacity = 1.0.obs;

  setOpacity(double value){
    opacity.value = value;
  }




}