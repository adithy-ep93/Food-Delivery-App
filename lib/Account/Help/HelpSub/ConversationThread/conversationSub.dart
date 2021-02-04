import 'dart:ui';

import 'package:flutter/material.dart';

class ConversationSub extends StatefulWidget {
  @override
  _ConversationSubState createState() => _ConversationSubState();
}

class _ConversationSubState extends State<ConversationSub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Chat with Swiggy',
        style: TextStyle(color: Colors.black),),
        
        iconTheme: IconThemeData(

        color: Colors.black,
        

       ),),

    );
  }
}