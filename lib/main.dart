import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imarket/features/Home/home_screen.dart';
import 'package:imarket/features/main_nav.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MainNav()
    );
  }
}
