import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/01Practices/counter/controller.dart';
import 'package:getxfluttertutorial/State%20Management/CounterController.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {



  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue,
          systemNavigationBarColor: Colors.blue,
        ),
        title: Text("Counter App"),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=> Text("${controller.counter}",style: TextStyle(
                fontSize: 30
            ),),
            ),
            SizedBox(height: 20,),
            OutlinedButton(
                onPressed: (){

                    controller.incrementValue();
                },
                child: Text("Add")
            )
          ],
        ),
      ),
    );
  }
}

