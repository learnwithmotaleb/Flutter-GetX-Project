import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class mLoginPage extends StatefulWidget {
  const mLoginPage({super.key});

  @override
  State<mLoginPage> createState() => _mLoginPageState();
}

class _mLoginPageState extends State<mLoginPage> {



  LoginControllerM loginController = Get.put(LoginControllerM());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue
        ),
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: loginController.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null; // Return null if the input is valid
                },
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),

                ),
              ),
              SizedBox(height: 12,),
              TextFormField(
                controller: loginController.passwordController.value,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Password';
                  }
                  return null; // Return null if the input is valid
                },
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Obx((){
                return InkWell(
                  onTap: (){
                    loginController.loginAPI();
                  },
                  child:loginController.loading.value?CircularProgressIndicator(): Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue
                      ),
                      child: Center(
                        child: Text("Continue",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),),
                      )
                  ),
                );
              })

            ],
          ),
        ),
      ),
    );
  }
}
