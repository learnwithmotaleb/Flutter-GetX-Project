



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/fonts/app_fonts.dart';

import '../resources/Widgets/custom_app_bar.dart';
import '../resources/colors/app_color.dart';
import '../view_model/services/splashscreen_services.dart';

class SplashScreenPage extends StatefulWidget {
   SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  SplashScreenServices splashScreenServices = Get.put(SplashScreenServices());
  @override
  void initState() {
    splashScreenServices.isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  AppColor.blueColor,
      body: Center(
        child: Text("splash_screent_text".tr,style: TextStyle(
          fontFamily: AppFonts.Poppins_Light,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          fontStyle: FontStyle.normal,
          letterSpacing: 5,
          shadows:
          [Shadow(
            color: Colors.black,
            offset: Offset(0.5,0.5),
            blurRadius: 5
          )
            ]
        ),),
      ),


    );
  }
}


