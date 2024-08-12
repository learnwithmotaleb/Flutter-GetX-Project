import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'ProductController.dart';

class FavoriteScreenPage extends StatefulWidget {
  const FavoriteScreenPage({super.key});

  @override
  State<FavoriteScreenPage> createState() => _FavoriteScreenPageState();
}

class _FavoriteScreenPageState extends State<FavoriteScreenPage> {


  // List<String> productList = ["IPhone 14","G3 HP Laptop","Canon Camera","Asus Laptop","Samsung","IPhone 15","G5 HP Laptop","Camera","Laptop","Samsung mi10"];
  //
  // List<String> temporaryProductList = [];


  ProductController controller = Get.put(ProductController());





  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue
        ),
        title: Text("Favorite"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.productList.length,
          itemBuilder: (BuildContext context,int index){
          return Card(
            elevation: 3,
            child: ListTile(
              onTap: (){

                if(controller.temporaryProductList.contains(controller.productList[index].toString())){

                  controller.removeToFavorite(controller.productList[index].toString());

                }else{
                  controller.addToFavorite(controller.productList[index].toString());

                }

              },
              leading: Icon(Icons.flutter_dash,color: Colors.black, size: 50,),
              title: Text(controller.productList[index].toString()),
              trailing: Obx(()=>Icon(Icons.favorite, color: controller.temporaryProductList.contains(controller.productList[index].toString()) ? Colors.red:Colors.grey,)),
              subtitle: Text("LwmSoft Tech Ltd"),
            ),
          );
          }
      ),

    );
  }
}
