import 'package:flutter/material.dart';
import 'package:kostapp/Components/RoundedButton.dart';
import 'package:kostapp/Components/TextFieldContainer.dart';
import 'package:kostapp/Screens/MeasurementScreen/MeasurementScreen.dart';
import 'package:kostapp/Screens/SignupScreen/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(child: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              "SIGNUP"
            ),

            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person, color: lightprimecolor),
                    hintText: "Name",
                    hintStyle: TextStyle(
                    color: lightprimecolor
                  )
                ),
              ),
              color: primecolor,
            ),

            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person, color: lightprimecolor),
                    hintText: "Surname",
                    hintStyle: TextStyle(
                        color: lightprimecolor
                    )
                ),
              ),
              color: primecolor,
            ),

            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.mail, color: lightprimecolor),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: lightprimecolor
                  )
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
                    )
                ),
              ),
              color: primecolor,
            ),

            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.lock, color: lightprimecolor),
                    hintText: "Password again",
                    hintStyle: TextStyle(
                        color: lightprimecolor
                    )
                ),
              ),
              color: primecolor,
            ),

            RoundedButton(
              text:"CREATE",
              textColor: lightprimecolor,
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {return MeasurementScreen();}));
              },
              color: primecolor,
            )
          ],
        ),
      ),
    )
    );
  }
}


