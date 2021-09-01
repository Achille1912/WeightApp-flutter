import 'package:flutter/material.dart';
import '/main.dart';

//************INPUT TEXT *******************/
// ignore: must_be_immutable
class InputText extends StatefulWidget {
  final String title;
  String units = "";
  String result = "";

  InputText(this.title) {
    if (title == "Height") {
      units = "metres";
    } else {
      units = "kg";
    }
  }

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: TextField(
          maxLength: 4,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
          decoration: InputDecoration(
              hintText: widget.units,
              hintStyle: TextStyle(fontSize: 20),
              labelText: widget.title,
              labelStyle: TextStyle(
                fontSize: 20,
                color: Color(0xffffc857),
              )),
          onChanged: (String str) {
            setState(() {
              if (widget.title == "Height") {
                height = double.parse(str);
              } else {
                mass = double.parse(str);
              }
            });
          },
        ),
      ),
    );
  }
}
