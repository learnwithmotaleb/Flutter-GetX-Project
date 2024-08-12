import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/colors/app_color.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/fonts/app_fonts.dart';

class GenaralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GenaralExceptionWidget({super.key, required this.onPress});

  @override
  State<GenaralExceptionWidget> createState() => _GenaralExceptionWidgetState();
}

class _GenaralExceptionWidgetState extends State<GenaralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off,size: 60,),
            SizedBox(height: height * .02,),
            Text("general_exception".tr,style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(height: height * .2,),
            InkWell(
              onTap: widget.onPress,

              child: Container(
                width: width*.4,
                height: height*.04,
                decoration: BoxDecoration(
                    color: AppColor.lightBlue1,
                    borderRadius: BorderRadius.circular(10)


                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(child: Text("retry_button".tr,style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: AppFonts.Poppins_Light

                  ),)),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
