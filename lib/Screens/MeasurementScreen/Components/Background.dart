import 'package:flutter/material.dart';
import 'package:kostapp/constants.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key, @required this.child}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -100,
            right: -150,
            child: Image.asset("Assets/Pictures/welcome_top.png",color: lightprimecolor),
          ),
          Positioned(
            bottom: -20,
            left: -50,
            child: Image.asset("Assets/Pictues/welcome_bottom.png",color: lightprimecolor),
          ),
          child
        ],
      ),
    );
  }
}
