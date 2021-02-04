import 'package:FoodDelivery/Login/Splash.dart';
import 'package:flutter/material.dart';
import 'package:FoodDelivery/Login/Login.dart';
//import 'package:FoodDelivery/Login/loginold.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/splash',
      routes: {
        // '/home': (context) => Navbar(),
        '/Login': (context) => Login(),
        '/splash': (context) => Splash(),
     
       
      },
    ));
