import 'package:flutter/material.dart';

class DropdownMenu extends StatefulWidget {

  //TODO: Lav så listen kan være et input og ikke hardcoded så metoden her kan genbruges.
  DropdownMenu({Key key,}) : super(key: key);

  @override
  _DropdownMenu createState() => _DropdownMenu();

}

class _DropdownMenu extends State<DropdownMenu> {

   String dropdownvalue = "Moderat aktiv";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownvalue,
      onChanged: (String newValue) {
        setState(() {
          dropdownvalue = newValue;
        });
      },
      items: <String>["Ikke aktiv","Lettere aktiv", "Moderat aktiv", "Meget aktiv", "Ekstrem Aktiv"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}