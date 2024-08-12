import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/Widgets/custom_app_bar.dart';

import '../../resources/app_urls/app_urls.dart';
import '../../resources/colors/app_color.dart';
import '../../resources/components/round_button.dart';
import '../../utils/utils.dart';
import '../../view_model/controller/login_controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  LoginControllerMV controller = Get.put(LoginControllerMV());
  bool _rememberMe = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blueColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColor.blueColor,
            systemNavigationBarColor: AppColor.blueColor),
        title: Text("MyApp!"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.updateLocale(Locale("en_US"));
                Utils.toastMessage("English Language");
              },
              child: Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "EN",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.updateLocale(Locale("bn_BD"));
                Utils.toastMessage("Bangla Language");
              },
              child: Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    "BN",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        backgroundColor: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: controller.phoneController.value,
                  focusNode: controller.phoneFocusNode.value,

                  validator: (value) {
                    String? result = controller.phoneValidation(value);
                    if (result != null) {
                      Utils.errorToastMessageBotton(result);
                    }
                    return result;
                  },
                  onFieldSubmitted: (value){
                    Utils.fieldFocusChange(context, controller.phoneFocusNode.value, controller.passwordFocusNode.value);
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: "phone_hint".tr,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.teal)
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.cyan),
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: controller.passwordController.value,
                  focusNode: controller.passwordFocusNode.value,
                  validator: (value) {
                    String? result = controller.passwordValidation(value);
                    if (result != null) {
                      Utils.errorToastMessageBotton(result);
                    }
                    return result;
                  },
                  onFieldSubmitted: (value){
                    Utils.fieldFocusChange(context, controller.phoneFocusNode.value, controller.passwordFocusNode.value);

                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureText,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _togglePasswordVisibility();
                        });
                      },
                    ),
                    hintText: "password_hint".tr,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.teal)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.teal)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.cyan),
                    )
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    Text('remembeer_password'.tr),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
               Obx(()=> RoundButton(
                 title: "login_button".tr,
                 loading: controller.loading.value,
                 onPress: () {
                   controller.loginAPI();
                   // print(AppUrls.baseUrl);
                   // print(AppUrls.loginUrl);
                   // print(AppUrls.seekerRegisterUrl);
                   // print(AppUrls.providerRegisterUrl);
                 },
                 width: double.infinity,
                 buttonColor: Colors.cyan,
               ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
