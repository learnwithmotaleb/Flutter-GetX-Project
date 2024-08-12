import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'imageController.dart';

class ImageHomeScreen extends StatefulWidget {
  const ImageHomeScreen({super.key});

  @override
  State<ImageHomeScreen> createState() => _ImageHomeScreenState();
}

class _ImageHomeScreenState extends State<ImageHomeScreen> {


  ImageControllerPage controller = Get.put(ImageControllerPage());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue,
        ),
        title: Text("ImagePicker"),
        centerTitle: true,
      ),
      body: Obx((){
      return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage:controller.imagePath.isNotEmpty ?
              FileImage(File(controller.imagePath.toString())) : null
            ),
          ),
          TextButton(
              onPressed: (){
                controller.getImage();
              },
              child: Text("Pic Image")
          )

        ],
      );
                }),
    );
  }
}
