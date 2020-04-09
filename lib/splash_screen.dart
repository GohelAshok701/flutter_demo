import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterdemo/base_screen.dart';
import 'package:flutterdemo/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends base_screen {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Fultter Demo",
      theme: ThemeData(primaryColor: Colors.orange),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Image.asset('assets/ic_home.png',color: Colors.white,),
      ),
    );
  }
}
