import 'package:flutter/material.dart';
import '/main.dart';

//************RISULTATO *******************/
// ignore: must_be_immutable
class Risultato extends StatefulWidget {
  double num = 0;
  String tmp = "";
  String msg = "";

  @override
  _RisultatoState createState() => _RisultatoState();
}

class _RisultatoState extends State<Risultato> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(40.0),
          child: (ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff8ac926),
              ),
              child: Text("Calculate",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onPressed: () {
                setState(() {
                  widget.tmp = "";
                  bmi = mass / (height * height);
                  widget.num = bmi;
                  widget.tmp = bmi.toStringAsFixed(2);

                  if (bmi < 18.5) {
                    widget.msg = "Underweight";
                  } else if (bmi >= 18.5 && bmi <= 24.9) {
                    widget.msg = "Normal weight";
                  } else if (bmi >= 25.0 && bmi <= 29.9) {
                    widget.msg = "Overweight";
                  } else if (bmi >= 30.0 && bmi <= 34.9) {
                    widget.msg = "Obesity class I";
                  } else if (bmi >= 35.0 && bmi <= 39.9) {
                    widget.msg = "Obesity class II";
                  } else if (bmi >= 40.0) {
                    widget.msg = "Obesity class III";
                  }
                  bmi = 0;
                });
              })),
        ),
        (Text(widget.tmp,
            style: TextStyle(color: Color(0xff6a4c93), fontSize: 40))),
        (Text(widget.msg, style: TextStyle(color: Colors.black, fontSize: 30)))
      ],
    );
  }
}
