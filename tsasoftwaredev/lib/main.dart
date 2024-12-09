

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tsasoftwaredev/InputScreen.dart';
import 'package:tsasoftwaredev/Login.dart';
import 'package:tsasoftwaredev/LoginMore.dart';


void main() => runApp(new AgriApp());

class AgriApp extends StatelessWidget {
  const AgriApp({super.key});
  @override 
  Widget build(BuildContext context) {

  
    return GetMaterialApp(
      title:'AgriApp', 
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      getPages: [
        GetPage(name: '/Login', page: () => Login()),

        GetPage(name:'/LoginMore', page: () => LoginMore()),

        GetPage(name: '/InputScreen', page: () => Inputscreen()),
      ],
      initialRoute: '/Login',
    );
  }  


}

