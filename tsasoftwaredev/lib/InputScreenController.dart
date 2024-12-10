import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http ;

class Inputscreencontroller extends GetxController {
  fetchdata(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body; // Adjust if your API returns JSON
    } else {
      throw Exception('Failed to load data');
    }
  }
}

