import 'package:flutter/material.dart';
import 'package:media_puisi/pages/MediaPuisiApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
      ),
      home: MediaPuisiApp(),
    );
  }
}
