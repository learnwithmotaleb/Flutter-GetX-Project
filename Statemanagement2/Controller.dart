import 'package:get/get.dart';

class Example2Controller extends GetxController{

  RxDouble opacity = .4.obs;

  setOpacity(double value){
    opacity.value = value;
  }


}