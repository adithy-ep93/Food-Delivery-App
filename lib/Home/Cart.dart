import 'dart:ui';

import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

 backgroundColor: Colors.white,


        body: SingleChildScrollView(
                  child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            
                child: Column(children: [
                  Image(image: AssetImage('assets/Food/f1.jpg',
                  ),
                  height: MediaQuery.of(context).size.height*.55,
                  width: MediaQuery.of(context).size.height*.99,),

                  Center(child: Text('GOOD FOOD IS ALWAYS COOKING',
                  style:TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ) ,),),

                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  Center(child: Text('Your cart is empty',
                  style:TextStyle(
                    color: Colors.grey
                  ) ,),),


                  Center(child: Text('Add something from the menu',
                  style:TextStyle(
                    color: Colors.grey
                  ) ,),),

                    SizedBox(height: MediaQuery.of(context).size.height*.04,),

                  FlatButton(
                    onPressed: (){

                    },
                     shape: RoundedRectangleBorder(side: BorderSide(
                    color: Color(0xff550d0e),
                    width: 1,
                    style: BorderStyle.solid
                     ), 
                     ),
                    color: Colors.white,
                    child: Text('BROWSE RESTAURANTS',
                    style: TextStyle(
                      color: Color(0xff550d0e),
                      fontWeight: FontWeight.bold
                    ),
                    ),

                  ),

                ],),
            ),
        )

      
      
    );
      
    
  }
}