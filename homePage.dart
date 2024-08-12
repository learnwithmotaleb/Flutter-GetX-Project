import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Tutorial"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Show Setting"),
              subtitle: Text("show bottomsheet"),
              onTap: (){

                Get.bottomSheet(
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,

                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Mode"),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Mode"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Get.back();

                          },
                        ),
                      ],
                    ),
                  )
                );

              }

            ),
          )
        ],
      )

    );
  }
}
