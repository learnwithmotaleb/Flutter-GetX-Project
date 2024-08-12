import 'package:get/get.dart';

class ListController extends GetxController{
  RxList<String> listFavorite = [
    "Laptop",
    "Smart Phone",
    "Box",
    "BoyaM1 Pro",
  ].obs;

  RxList<dynamic> favoritList = [].obs;

  addToFavorite(String value){
    favoritList.add(value);

  }

  removeToFavorite(String value){
    favoritList.remove(value);
  }

}