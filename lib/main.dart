import 'package:flutter/material.dart';
import 'package:windowsapp/speechToText.dart';
import 'package:windowsapp/ui.dart';
import 'package:windowsapp/whiteboard.dart';

import 'AR.dart';
import 'Attendance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        './whiteboard':(context)=>WhiteBoard(),
        './AR':(context)=>AR(),
        './SpeechToText':(context)=>SpeechToText(),
        './Attendance':(context)=>Attendance(),
      },
      title: 'Tech-eye',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: optionSelector(),
        ),
      ),
    );
  }
}