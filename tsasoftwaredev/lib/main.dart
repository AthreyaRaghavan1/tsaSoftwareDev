import 'package:flutter/material.dart';
import 'package:sklite/SVM/SVM.dart';
import 'package:sklite/utils/io.dart';
import 'dart:convert';

void main() => runApp(new MaterialApp(
  home: new HomePage(),
  debugShowCheckedModeBanner: false)
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  SVC svc;

  _HomePageState() {
    loadModel("assets/svcmnist.json").then((x) {
      this.svc = SVC.fromMap(json.decode(x));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // add any widget with svc.predict() callback
    );
  }
}