import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageHome extends StatefulWidget {
  const LanguageHome({super.key});

  @override
  State<LanguageHome> createState() => _LanguageHomeState();
}

class _LanguageHomeState extends State<LanguageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Flutter"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text("massage".tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              TextButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
              }, child: Text("English")),
              SizedBox(width: 10,),
              TextButton(onPressed: (){
                Get.updateLocale(Locale('bn','BD'));
              }, child: Text("Bangla")),
            ],
          )


        ],
      ),
    );
  }
}
