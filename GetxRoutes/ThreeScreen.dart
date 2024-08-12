import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  var name;
   ScreenThree({super.key, this.name});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Three"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text(Get.arguments[0]),
          ),
          Center(
            child: Text(Get.arguments[1]),
          ),
          Center(
            child: Text(Get.arguments[3]),
          ),
          SizedBox(height: 30,),
          Center(
            child: TextButton(
              onPressed: (){
                Get.back();
                Get.back();
              },
              child: Text("Go Back"),
            ),
          ),
        ],
      ),
    );
  }
}
