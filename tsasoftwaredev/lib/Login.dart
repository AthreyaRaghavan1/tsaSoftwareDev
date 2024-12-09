import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Login extends StatelessWidget {
  const Login({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          AndroidCompact1(),
        ]),
      ),
    );
  }
}

class AndroidCompact1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 907,
          decoration: BoxDecoration(color: Color(0xFF383C36)),
          child: Stack(
            children: [
              // Login Button
              Positioned(
                left: 96,
                top: 533,
                child: InkWell(
                  onTap: () {
                    Get.toNamed("/LoginMore");
                    print("Login button tapped");
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 220,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(0xFF34C759),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Sign Up Button
              Positioned(
                left: 96,
                top: 639,
                child: InkWell(
                  onTap: () {
                    print("Sign Up button tapped");
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 220,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(0xFF34C759),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Footer Image
              Positioned(
                left: -40,
                top: 805,
                child: Container(
                  width: 480,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("assets/images/cartoongrass.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // Main Image
              Positioned(
                left: 34,
                top: 143,
                child: Container(
                  width: 344,
                  height: 311,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("assets/images/Agrificient.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



