import 'package:flutter/material.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/pages/bottom_nav_bar.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home:const BottomBar(),
    );
  }
}