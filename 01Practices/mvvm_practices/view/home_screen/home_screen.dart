import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/resources/Widgets/custom_app_bar.dart';

import '../../resources/colors/app_color.dart';
import '../../utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
                ),
                accountEmail: Text('info.learnwithmotaleb.com'),
                accountName: Text(
                  "Abdul Motaleb",
                  style: TextStyle(fontSize: 24.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.house),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {

                },
              ),
              ListTile(
                leading: const Icon(Icons.credit_card),
                title: const Text(
                  'Student ID',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                },
              ),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text(
                  'Rate App',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                },
              ),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text(
                  'Languages',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                },
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text(
                  'History',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {

                },
              ),
            ],
          ),
        )

    );
  }
}
