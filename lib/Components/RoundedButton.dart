import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final String text;
  final Function press;
  final Color color, textColor;
  final double bottomMargin;
  final double topMargin;

  const RoundedButton({
    Key key, this.text, this.press, this.color , this.textColor, this.bottomMargin, this.topMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(0, topMargin, 0, bottomMargin),
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(text,
          style: TextStyle(
            color: textColor
          ),),
        ),
      ),
    );
  }
}