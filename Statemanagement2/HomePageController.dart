import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/Statemanagement2/Controller.dart';

class HomePageController extends StatefulWidget {
  const HomePageController({super.key});

  @override
  State<HomePageController> createState() => _HomePageControllerState();
}

class _HomePageControllerState extends State<HomePageController> {

  Example2Controller controller = Get.put(Example2Controller());



  @override
  Widget build(BuildContext context) {
    print("Rebuild");

    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Flutter"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           Obx(() =>  Container(
             width: 300,
             height: 200,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.red.withOpacity(controller.opacity.value)
             ),

           ),),
            SizedBox(height: 20,),
            Obx((){
              return             Slider(
                  value: controller.opacity.value,
                  onChanged: (value){
                    print(value);
                    controller.setOpacity(value);

                  });

            }),


          ],
        ),
      ),


    );
  }
}
