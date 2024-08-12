import 'package:flutter/material.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/colors/app_color.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/fonts/app_fonts.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,

      required this.title,
      required this.onPress,

      this.loading = false,
      this.width = 200,
      this.height = 50,
      this.textColor = Colors.white,
      this.buttonColor = AppColor.lightBlue2
      });

  final bool loading;
  final String title;
  final double height;
  final double width;
  final VoidCallback onPress;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: loading ?Center(child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircularProgressIndicator(
          backgroundColor: AppColor.lightBlue2,
          color: AppColor.blueColor,
        ),
      ),): Center(child: Text(title,style: TextStyle(
          color: textColor,
          fontSize: 20,
          fontFamily: AppFonts.Poppins_Light
      ),)),
    ),
    );
  }
}
