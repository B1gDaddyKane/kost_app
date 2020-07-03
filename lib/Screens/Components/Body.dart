import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kostapp/Screens/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gives us size of screen, (context)
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text("THE PLATE"
          ),
        RoundedButton(
          text: "LOGIN",
          press: () {},
        )
      ],
    ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key, this.text, this.press, this.color = primecolor, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: press,
            child: Text(text),
      ),
     ),
    );
  }
}

