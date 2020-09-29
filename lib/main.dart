import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kostapp/Screens/WelcomeScreen/WelcomeScreen.dart';
import 'package:kostapp/Screens/LoadingScreen/LoadingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return WelcomeScreen();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return LoadingScreen();
      },
    );
  }
}
