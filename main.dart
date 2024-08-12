import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/languages/app_languages.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/routes/routes.dart';
import 'package:getxfluttertutorial/GetxRoutes/ThreeScreen.dart';
import 'package:getxfluttertutorial/GetxRoutes/second_screen.dart';
import 'package:getxfluttertutorial/LocalizationGetx/Languages.dart';
import '01Practices/Favorite/fovoritescreen.dart';
import '01Practices/LoginSystem/LoginPageH.dart';
import '01Practices/OpacityExample/OpacityScreen.dart';
import '01Practices/SwitchGetx/switchScreen.dart';
import '01Practices/counter/counter.dart';
import '01Practices/homePage01.dart';
import '01Practices/imageUpload/imagescreeon.dart';
import '01Practices/mvvm_practices/view/splash_screen.dart';
import 'GetxRoutes/Mainpage.dart';
import 'ImagePicker/ImagePicker.dart';
import 'ListFavorite/ListHomePage.dart';
import 'LocalizationGetx/LanguageHomeaPage.dart';
import 'LoginSystemGetx/LogingHomePage.dart';
import 'State Management/CounterController.dart';
import 'State Management/CounterControllerHome.dart';
import 'State Management/HomePageApp.dart';
import 'Statemanagement2/HomePageController.dart';
import 'getxHeightWidget/heightandwidget.dart';
import 'homePage.dart';
import 'homepagekk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale:Locale('en','Us') ,
      fallbackLocale: Locale('en','Us'),
      translations: AppLanguages(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      getPages: AppRoutes.appRoutes(),
      // home:  Homepagekk(),
      // getPages: [
      //   GetPage(name: "/", page: ()=> MainPage()),
      //   GetPage(name: "/secondScreen", page: ()=> SecondScreen()),
      //   GetPage(name: '/thirdpage', page: ()=> ScreenThree()),
      // ],
    );
  }
}


