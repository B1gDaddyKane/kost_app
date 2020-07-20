import 'package:flutter/material.dart';
import 'package:kostapp/Screens/MeasurementScreen/Components/DropdownMenu.dart';
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
                  border: InputBorder.none,
                  icon: Icon(Icons.settings_input_svideo, color: lightprimecolor),
                  hintText: 'Current weight',
                    hintStyle: TextStyle(
                        color: lightprimecolor
                    )
                ),
                keyboardType: TextInputType.number,
              ),
              color: primecolor,
            ),

            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.arrow_upward, color: lightprimecolor),
                  hintText: 'Height',
                    hintStyle: TextStyle(
                    color: lightprimecolor
                )
                ),
                keyboardType: TextInputType.number,
              ),
              color: primecolor,
            ),

            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.calendar_today, color: lightprimecolor),
                  hintText: 'Age',
                  hintStyle: TextStyle(
                    color: lightprimecolor
                  )
                ),
                keyboardType: TextInputType.number,
              ),
              color: primecolor,
            ),

            TextFieldContainer(
              child: DropdownMenu(),
              color: primecolor,
            ),
          ],
        ),
      ),
    );
  }
}


