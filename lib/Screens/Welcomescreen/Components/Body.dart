import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kostapp/Components/RoundedButton.dart';
import 'package:kostapp/Screens/LoginScreen/LoginScreen.dart';
import 'package:kostapp/Screens/Welcomescreen/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gives us size of screen, (context)
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("THE PLATE"
            ),
          RoundedButton(
            text: "LOGIN",
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
              text: "SIGNUP",
              press: () {},
              color: primecolor
            )
        ],
    ),
      ),
    );
  }
}


