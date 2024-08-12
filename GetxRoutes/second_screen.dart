import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ThreeScreen.dart';

class SecondScreen extends StatefulWidget {
  final String name;

  const SecondScreen({super.key,  this.name = ''});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(child: Text("Screen Second"),
        onPressed: (){
          // Navigator.pop(context);
          // Get.back();
          // Get.to(ScreenThree());
          Get.toNamed('/thirdpage',arguments: [
            'I am Abdul Motaleb',
            'I am Lipon Islam',
            'My Name Is Abdul Motaleb',
            'My name is Nila Akter',
          ]);
        },),
      ),
    );
  }
}
