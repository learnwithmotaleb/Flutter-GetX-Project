import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/TextEditinController.dart';

class HomePageLogin extends StatefulWidget {
  const HomePageLogin({super.key});

  @override
  State<HomePageLogin> createState() => _HomePageLoginState();
}

class _HomePageLoginState extends State<HomePageLogin> {

  TextEditingControllerGetX controller = Get.put(TextEditingControllerGetX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get LoginSystem"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: "Email",

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.black
                  ),

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.black
                  ),

                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: "Password",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black
                  ),

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.black
                  ),

                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Obx((){
            return InkWell(
              onTap: (){
                controller.loginApi();
              },
              child:controller.loading.value ?Center(child: CircularProgressIndicator(),):Container(
                width: MediaQuery.of(context).size.width*.9,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                ),
                child: Center(child: Text("Continue",style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),),),
              ),
            );
          })
        ],
      ),
    );
  }
}
