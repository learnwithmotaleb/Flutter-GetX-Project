import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/State%20Management/CounterController.dart';

class CounterControllerHome extends StatefulWidget {
  const CounterControllerHome({super.key});

  @override
  State<CounterControllerHome> createState() => _CounterControllerHomeState();
}

class _CounterControllerHomeState extends State<CounterControllerHome> {

  final CounterController controller = Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx((){
              return Center(
                child: Text("Product  ${controller.counter.toString()}",style: TextStyle(
                  fontSize: 16,
                ),),
              );
            }),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  controller.incrementCounter();
                },child: Icon(Icons.add)),
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                  if(controller.counter == 0){
                    print("Please Select Item");
                  }else{
                    controller.decrementCounter();
                  }

                },child: Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
