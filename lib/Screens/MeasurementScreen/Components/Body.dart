import 'package:flutter/material.dart';
import 'package:kostapp/Components/TextFieldContainer.dart';
import 'package:kostapp/Screens/MeasurementScreen/Components/Background.dart';
import 'package:kostapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.settings_input_svideo, color: Colors.black),
                  hintText: 'Weight',
                ),
                keyboardType: TextInputType.number,
              ),
              color: primecolor,
            ),
          ],
        ),
      ),
    );
  }
}
