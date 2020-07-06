import 'package:flutter/material.dart';
import 'package:kostapp/Components/RoundedButton.dart';
import 'package:kostapp/Components/TextFieldContainer.dart';
import 'package:kostapp/Screens/SignupScreen/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(child: Column(
      children: <Widget>[

        Text(
          "SIGNUP"
        ),

        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person, color: Colors.black,),
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

        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.black,),
                hintText: "Password again"
            ),
          ),
          color: primecolor,
        ),

        RoundedButton(
          text:"CREATE",
          press: (){},
          color: primecolor,
        )
      ],
    )
    );
  }
}


