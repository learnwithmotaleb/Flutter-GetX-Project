import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/routes/route_names.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/view/login/login_view.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/view/splash_screen.dart';

import '../../view/home_screen/home_screen.dart';

class AppRoutes {

  static appRoutes ()=> [

    GetPage(name: RouteName.splashScreen, page: ()=>  SplashScreenPage(),transition: Transition.leftToRight,curve: Curves.easeInSine,),
    GetPage(name: RouteName.loginScreen, page: ()=>  LoginScreen(),transition: Transition.leftToRight,curve: Curves.easeInSine,),
    GetPage(name: RouteName.homeScreen, page: ()=>  HomeScreen(),transition: Transition.leftToRight,curve: Curves.easeInSine,)

  ];
}