import 'package:flutter/material.dart';
import 'package:kostapp/Screens/Welcomescreen/WelcomeScreen.dart';
import 'package:kostapp/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Plate',
      theme: ThemeData(
        primaryColor: primecolor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }


}