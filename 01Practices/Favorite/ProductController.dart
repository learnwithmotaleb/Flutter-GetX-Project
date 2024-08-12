import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ProductController extends GetxController{

  RxList<String> productList = ["IPhone 14","G3 HP Laptop","Canon Camera","Asus Laptop","Samsung","IPhone 15","G5 HP Laptop","Camera","Laptop","Samsung mi10"].obs;
  RxList<dynamic> temporaryProductList = [].obs;


  addToFavorite(String value){
    temporaryProductList.add(value);
  }
  removeToFavorite(String value){
    temporaryProductList.remove(value);

  }
}