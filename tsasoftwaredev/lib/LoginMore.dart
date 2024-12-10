import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginMore extends StatelessWidget {
  const LoginMore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          AndroidCompact2(),
        ]),
      ),
    );
  }
}

class AndroidCompact2 extends StatefulWidget {
  @override
  _AndroidCompact2 createState() => _AndroidCompact2();
}

class _AndroidCompact2 extends State<AndroidCompact2> {
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _handlePress;
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _textController.dispose();
    super.dispose();
  }

  void _handlePress() {
    Get.toNamed('/Login');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 412,
        height: 907,
        decoration: BoxDecoration(color: Color(0xFF393D36)),
        child: Stack(children: [
          Positioned(
            left: 0,
            top: 795,
            child: Container(
              width: 412,
              height: 112,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("assets/images/cartoongrass.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 96,
            top: 644,
            child: Container(
              width: 220,
              height: 60,
              decoration: ShapeDecoration(
                color: Color(0xFF34C759),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0.03,
                                letterSpacing: 0.10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ),
                    onTap: () {
                      Get.toNamed('/InputScreen');
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 34,
            top: 55,
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
          Positioned(
            left: 57,
            top: 704,
            child: Container(
              width: 297,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xFF393D36),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 1),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don’t have an account? Sign up ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'here',
                                  style: TextStyle(
                                    color: Color(0xFF2398CA),
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                    letterSpacing: 0.30,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: _tapGestureRecognizer,
                                ),
                                TextSpan(
                                  text: '!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            labelText: "Enter your username",
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true, // Sets the background color
          ),
        ),
      ),
    ]);
  }
}
