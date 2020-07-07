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
            "LOGIN"
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.black),
                hintText: "Email"
              ),
            ),
            color: primecolor,
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.black,),
                hintText: "Password"
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


