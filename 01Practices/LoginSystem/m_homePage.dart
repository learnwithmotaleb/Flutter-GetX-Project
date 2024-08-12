import 'package:flutter/material.dart';

class MhomePageScreen extends StatefulWidget {
  const MhomePageScreen({super.key});

  @override
  State<MhomePageScreen> createState() => _MhomePageScreenState();
}

class _MhomePageScreenState extends State<MhomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home Page"),
      )
    );
  }
}
