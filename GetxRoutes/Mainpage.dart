import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/GetxRoutes/second_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("GetX AppBar"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                // Get.to(SecondScreen(name: "Nila",));
                Get.toNamed("/secondScreen");
              },
              child: Text("Next Screen"),
            ),
          )
        ],
      ),

    );
  }
}
