import 'package:flutter/material.dart';
import 'package:stateundsheard/model/datamodel.dart';

import 'screen/startscreen.dart';

void main() {
  DataModel dm = new DataModel();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Managemant und Shared Preferences',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
    );
  }
}
