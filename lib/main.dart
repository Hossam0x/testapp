import 'package:flutter/material.dart';
import 'package:testapp/changecolor.dart';
import 'package:testapp/mydataScreen.dart';

void main() {
  runApp(const DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorBoxPage(),
    );
  }
}
