import 'package:flutter/cupertino.dart';
import 'package:kostapp/Screens/LoadingScreen/Components/Background.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  ]
              )
          )
        );
  }
}
