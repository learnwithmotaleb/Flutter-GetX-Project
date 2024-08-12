import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightAndWidget extends StatefulWidget {
  const HeightAndWidget({super.key});

  @override
  State<HeightAndWidget> createState() => _HeightAndWidgetState();
}

class _HeightAndWidgetState extends State<HeightAndWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height*1;
    final getHeight = Get.height;
    final getWidget = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Flutter"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height*.2,
              // height:height*1,
              height: getHeight*.2,
              width: getWidget*1,
              color: Colors.blue,
              child: Center(
                child: Text("Hello Flutter Developer"),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height*.2,
              // height:height*1,
              height: getHeight*.2,
              width: getWidget*1,
              color: Colors.blue,
              child: Center(
                child: Text("Hello Flutter Developer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
