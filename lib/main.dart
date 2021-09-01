import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '/input_text.dart';
import '/risultato.dart';

double bmi = 0;
double height = 0;
double mass = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR",
              style: TextStyle(fontWeight: FontWeight.w900)),
          backgroundColor: Color(0xff8ac926),
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffF6F5AE),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            Padding(
                padding: EdgeInsets.all(40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    (InputText('Height')),
                    (InputText('Mass')),
                  ],
                )),
            (Risultato()),
            Placeholder(
              fallbackHeight: 120.0,
              color: Colors.transparent,
            ),
            Center(
                child: (InkWell(
                    child: FloatingActionButton(
              onPressed: () {
                launch('https://en.wikipedia.org/wiki/Body_mass_index');
              },
              child: Icon(Icons.web),
            ))))
          ],
        ),
      ),
    );
  }
}
