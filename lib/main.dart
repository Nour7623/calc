import 'package:calc/bmi%20culc.dart';
import 'package:calc/bmi_result.dart';
import 'package:calc/counter_screen.dart';
import 'package:calc/lay%20out/home-layout.dart';
import 'package:calc/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:homelayout()
    );
  }

}
