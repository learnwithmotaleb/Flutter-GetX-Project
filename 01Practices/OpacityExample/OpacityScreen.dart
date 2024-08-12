import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'OpacityController.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {



  OpacityControllerM controllerM = Get.put(OpacityControllerM());


  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=> Container(
              width: 200,
              height: 200,
              color: Colors.blue.withOpacity(controllerM.opacity.value),
            ),),
            SizedBox(height: 20,),
            Obx(()=> Slider(
                value: controllerM.opacity.value,
                onChanged: (value){

                  controllerM.setOpacity(value);


                }
            ))
          ],
        ),
      )

    );
  }
}
