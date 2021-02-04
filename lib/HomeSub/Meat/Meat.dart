import 'package:FoodDelivery/HomeSub/Meat/Azia.dart';

import 'package:FoodDelivery/HomeSub/Meat/Favourites.dart';
import 'package:FoodDelivery/HomeSub/Meat/FreshFarm.dart';
import 'package:FoodDelivery/HomeSub/Meat/HalalMeatBox.dart';
import 'package:FoodDelivery/HomeSub/Meat/SPM.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Meat extends StatefulWidget {
  @override
  _MeatState createState() => _MeatState();
}

class _MeatState extends State<Meat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(children: [
          Icon(FontAwesomeIcons.pizzaSlice,
          color: Color(0xff550d0e),),

          SizedBox(width: MediaQuery.of(context).size.width*.03,),

          Text('FRESH MEAT STORES',
          style: TextStyle(
            color: Colors.black
          ),)

        ],),
      ),

      body: SingleChildScrollView(child: 
      
      Column(children: [

       // SizedBox(height: MediaQuery.of(context).size.height*.03,),

        Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(20),
          child: TextField(
              
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
              ),

              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),
              suffixIcon: Icon(Icons.search),

              hintText: 'Search In Fresh Meat Stores',
              filled: true,
              fillColor: Colors.white,
              
              
             // icon: Icon(Icons.search),
             ),
          ),
        ),

        //SizedBox(height: MediaQuery.of(context).size.height*.03,),
        Row(children: [
            SizedBox(width: MediaQuery.of(context).size.width*.02,),
          Icon(Icons.location_on_sharp,
          color: Colors.green,),

          SizedBox(width: MediaQuery.of(context).size.width*.02,),

          Text('FARAWAY STORES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),

        ],),

        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width*.1,),
            Text('Addition distance fee applicable'),
          ],
        ),

        SizedBox(height: MediaQuery.of(context).size.height*.03),

        GestureDetector(

          onTap: (){
            Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>AziaChicken()));
          },
                  child: Container(
            
            height: MediaQuery.of(context).size.height*.18,
            width: MediaQuery.of(context).size.width*.999,
            child: Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              Image.asset('assets/Home/Meat/m1.jpg'),

              SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                  Text('AZIA HALAL CHICKEN',
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                  
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('Kazhakuttam'),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('12 Kms   1 Hour Deliver'),


                ],),
              )
            ],),
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height*.01),
        
        
        
        GestureDetector(
          onTap: (){
             Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>SPM()));
          },
                  child: Container(

            
            
            height: MediaQuery.of(context).size.height*.18,
            width: MediaQuery.of(context).size.width*.999,
            child: Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              Image.asset('assets/Home/Meat/m3.jfif'),

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                  Text('SPM Meat Stall',
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                  
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('Kazhakuttam'),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('12 Kms   1 Hour Deliver'),


                ],),
              )
            ],),
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height*.01),

        Divider(color:Colors.grey[300],
        thickness: 10,),

        

        Container(
          
          color: Colors.grey[200],
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.02),
              Row(children: [

                SizedBox(width: MediaQuery.of(context).size.width*.03),

                Text('Currently Closed Stores',
                style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold),),

                


              ],),

               SizedBox(height: MediaQuery.of(context).size.height*.04),
        
        GestureDetector(
          onTap: (){
             Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>HalalMeatBox()));
          },
                  child: Container(

            
            
            height: MediaQuery.of(context).size.height*.18,
            width: MediaQuery.of(context).size.width*.999,
            child: Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              Image.asset('assets/Home/Meat/m4.jpg'),

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                  Text('HALAL MEAT BOX',
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                  
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('Attingal'),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('13 Kms   1 Hour Deliver'),


                ],),
              )
            ],),
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height*.02),
        
        GestureDetector(
          onTap: (){
            Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>Favourites()));
          },
                  child: Container(

            
            
            height: MediaQuery.of(context).size.height*.18,
            width: MediaQuery.of(context).size.width*.999,
            child: Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              Image.asset('assets/Home/Meat/m5.jpg'),

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                  Text('Favourites',
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                  
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('Attingal'),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('13 Kms   1 Hour Deliver'),


                ],),
              )
            ],),
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height*.04),
        
        GestureDetector(
          onTap: (){

            Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>FreshFarm()));
            
          },
                  child: Container(

            
            
            height: MediaQuery.of(context).size.height*.18,
            width: MediaQuery.of(context).size.width*.999,
            child: Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              Image.asset('assets/Home/Meat/m6.jpg'),

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                  Text('Fresh From Farm',
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                  
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('Attingal'),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('13 Kms   1 Hour Deliver'),


                ],),
              )
            ],),
          ),
        ),


            ],
          ),
        ),

        
        

      ],)
      
      ,),
      
    );
  }
}