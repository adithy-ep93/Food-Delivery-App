import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  
  bool state = true;
  @override

 
  Widget build(BuildContext context) {
    return Scaffold(

            appBar: AppBar(
              backgroundColor: Color(0xffDfd7cc),
              title: Text('App Settings',
              style: TextStyle(
                color: Colors.black
              ),
              ),
              iconTheme: IconThemeData(color: Colors.black),
            ),


            body: SingleChildScrollView(
              
              child: Column(
                
                
                children: [
                    
                  Container(
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(20),
                    child: 
                  
                  Row(children: [
                    Text('Picture In Picture Mode',
                    style: TextStyle(
                        fontSize: 16
                    ),),
                  ],)

                  ,),


                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                    child: Row(
                      
                      children: [
                      Icon(Icons.picture_in_picture_alt),

                      SizedBox(width: MediaQuery.of(context).size.width*.04,),

                      Text('Allow Picture In The Picture Mode',
                      style: TextStyle(
                        fontSize: 16
                      ),
                      ),

                      

                     Switch(
                       value: state,
                       onChanged: (bool s){
                         setState(() {
                           state =s;
                         });
                       },
                       activeColor: Colors.green,
                       
                      
                     ),

                    
  
                    ],),


                    
                  ),

                   
               Container(
                 
                 padding: EdgeInsets.fromLTRB(50, 0, 70, 0),
                 
                 child: Text('PIP mode allows you to live trackyour order in a Small Window pinned to one corner of your Screen while you navigate to other apps or to the home screen',
                 
                 style: TextStyle(
                   color: Colors.grey,

                 ),

                 ))
                     

              ],) 
            
            
            ,),

    );
  }
}