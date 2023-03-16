import 'package:dhlotto/bindings/home_binding.dart';
import 'package:dhlotto/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Example',
      initialBinding: HomeBinding(),
      home: HomeView(),
    );
  }
}