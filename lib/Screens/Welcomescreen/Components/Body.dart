import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kostapp/Components/RoundedButton.dart';
import 'package:kostapp/Screens/LoginScreen/LoginScreen.dart';
import 'package:kostapp/Screens/SignupScreen/SignupScreen.dart';
import 'package:kostapp/Screens/Welcomescreen/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gives us size of screen, (context)
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                "PLATEFUL",
                style: TextStyle(
                  fontSize: 40,
                  color: primecolor,
                ),
              ),
            ),

            RoundedButton(
              text: "LOG IN",
              textColor: lightprimecolor,
              bottomMargin: 0,
              topMargin: 10,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();}
                      ,)
                  ,)
                ;},
              color: primecolor
            ),
              RoundedButton(
                text: "SIGN UP",
                textColor: lightprimecolor,
                bottomMargin: 100,
                topMargin: 20,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SignupScreen();}
                      ,)
                    ,)
                  ;
                },
                color: primecolor
              )
        ],
    ),
      ),
    );
  }
}


