import 'package:flutter/material.dart';
import 'package:tekan/src/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teka',
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.amber[700],
          scaffoldBackgroundColor: Colors.blueGrey[50]),
      home: HomePage(),
    );
  }
}
