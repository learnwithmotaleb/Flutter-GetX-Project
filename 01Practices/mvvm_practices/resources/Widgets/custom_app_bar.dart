

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/utils.dart';
import '../colors/app_color.dart';

class CustomAppBar extends StatelessWidget {
    CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.blueColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.blueColor,
          systemNavigationBarColor: AppColor.blueColor
      ),
      title: Text("AppBar"),

      actions: [
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Get.updateLocale(Locale("en_US"));
              Utils.toastMessage("English Language");
            },
            child: Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white
              ),
              child: Center(
                child: Text("EN",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black
                ),),
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Get.updateLocale(Locale("bn_BD"));
              Utils.toastMessage("Bangla Language");
            },
            child: Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green
              ),
              child: Center(
                child: Text("BN",style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    backgroundColor: Colors.red
                ),),
              ),
            ),
          ),
        ),
      ],
    );
  }
}