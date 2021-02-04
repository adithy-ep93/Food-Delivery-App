import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Refundstatus extends StatelessWidget {
  IconData get k => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_sharp, color: Colors.black),
        ),
        title: Text(
          "ACTIVE REFUNDS",
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 100, 20, 20),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/Account/Refundstatus/ar.jpg',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'You don\'t have any',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Center(
                child: Text(
                  'Active Refund',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
