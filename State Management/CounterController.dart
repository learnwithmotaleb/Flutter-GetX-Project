import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController{

  RxInt counter = 0.obs;

  incrementCounter(){
    counter.value++;
    print(counter.value);
  }

  decrementCounter(){
    counter.value--;
    print(counter.value);
  }


}