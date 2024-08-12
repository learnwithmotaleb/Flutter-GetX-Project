import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listController.dart';

class ListHomePage extends StatefulWidget {
  const ListHomePage({super.key});

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {

  // List<String> listFavorite = [
  //   "Laptop",
  //   "Smart Phone",
  //   "Box",
  //   "BoyaM1 Pro",
  // ];
  // List<String> favoritList = [];

  ListController controller = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text("List Favorite"),
        centerTitle: true,
      ),
      body:ListView.builder(
            itemCount: controller.listFavorite.length,
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  onTap: (){
                    if(controller.favoritList.contains(controller.listFavorite[index].toString())){
                      controller.removeToFavorite(controller.listFavorite[index].toString());
                    }else{
                      controller.addToFavorite(controller.listFavorite[index].toString());
                    }
                  },
                  title: Text(controller.listFavorite[index].toString()),
                  trailing: Obx((){
                    return Icon(Icons.favorite,
                        color: controller.favoritList.contains(controller.listFavorite[index].toString()) ?
                        Colors.red : Colors.grey);
                  })
                ),
              );
            })

    );
  }
}
