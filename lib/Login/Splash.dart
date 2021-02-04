import 'dart:async';
import 'package:FoodDelivery/Login/Login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDfd7cc),
      body: Center(
        child: Container(
          color: Color(0xffDfd7cc),
          // height: 100,
          // width: 100,
          child: Center(
            child: Image(image: AssetImage('assets/Home/Splash.jpg'),
            fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}
