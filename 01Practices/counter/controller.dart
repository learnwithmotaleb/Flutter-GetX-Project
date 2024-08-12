import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class Controller extends GetxController{

  RxInt counter = 0.obs;


  incrementValue(){
    counter.value ++;
  }


}