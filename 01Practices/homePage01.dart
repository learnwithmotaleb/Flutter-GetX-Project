import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage02 extends StatefulWidget {
  const HomePage02({super.key});

  @override
  State<HomePage02> createState() => _HomePage02State();
}

class _HomePage02State extends State<HomePage02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue
        ),
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello Bangladesh"),
      )
    );
  }
}
