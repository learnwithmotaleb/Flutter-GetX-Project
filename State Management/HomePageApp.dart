import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageApp extends StatefulWidget {
  const HomePageApp({super.key});

  @override
  State<HomePageApp> createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {

  int x = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      x++;
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {

    print("Rebuild");

    return Scaffold(

      appBar: AppBar(
        title: Text("Getx Flutter"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("$x",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 1000,
                  itemBuilder: (context,index){
            return ListTile(
              title: Text(index.toString()),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            x++;
          });
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}
