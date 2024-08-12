import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:image_picker/image_picker.dart';

class ImageControllerPage extends GetxController {

  RxString imagePath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagePath.value = image.path.toString();
    }else{
      print("No selected image.Please try again");
      Get.snackbar("App Name", "No Select Image",snackPosition: SnackPosition.BOTTOM);
    }
  }
}
