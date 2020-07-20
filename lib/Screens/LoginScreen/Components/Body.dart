import 'package:flutter/material.dart';
import 'package:kostapp/Components/TextFieldContainer.dart';
import 'package:kostapp/Screens/LoginScreen/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  const Body({
  Key key,
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
              color: primecolor,
              fontSize: 30,
            ),
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.person, color: lightprimecolor),
                hintText: "Email",
                hintStyle: TextStyle(
                    color: lightprimecolor
                ),
              ),
            ),
            color: primecolor,
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.lock, color: lightprimecolor),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: lightprimecolor
                ),
              ),
            ),
            color: primecolor,
          ),
        ],
      ),
    )
    );
  }
}


