import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxfluttertutorial/01Practices/SwitchGetx/switchController.dart';

class SwithScreenPage extends StatefulWidget {
  const SwithScreenPage({super.key});

  @override
  State<SwithScreenPage> createState() => _SwithScreenPageState();
}

class _SwithScreenPageState extends State<SwithScreenPage> {



  SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {

    print("rebuild");

    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchPage"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Change Theme",style: TextStyle(
              fontSize: 20,
              color: controller.textColor,
            ),),



            Obx(()=>  Switch(
              value: controller.isBool.value,
              onChanged: (value){
                if(controller.isBool.value = value){
                  Get.changeTheme(ThemeData.dark());
                  controller.textColor = Colors.white;

                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Notification On")));
                }else{
                  controller.textColor = Colors.black;
                  Get.changeTheme(ThemeData.light());
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Notification Off")));
                }
              },



            ))

          ],
        ),
      ),
    );
  }
}
