import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -100,
            left: -150,
            child: Image.asset("Assets/Pictures/welcome_top.png",
                width: size.width),
          ),
          Positioned(
            bottom: -20,
            right: -50,
            child: Image.asset("Assets/Pictures/welcome_bottom.png",
              width: size.width * 0.4,)
            ,),
          child,
        ],
      ),
    );
  }
}
