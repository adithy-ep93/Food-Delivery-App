import 'package:flutter/material.dart';
import '../../screens/AddAddressMap.dart';

class ManageAddress extends StatefulWidget {
  @override
  _ManageAddressState createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation:0 ,
          iconTheme: IconThemeData(
            color: Colors.black,),
          backgroundColor:Color(0xffDfd7cc),
          

      ),

      body: SingleChildScrollView(
                  child: Container(
            
            
                child: Column(children: [
                  Image(image: AssetImage('assets/Food/d.jpg',
                  ),
                  
                  //height: MediaQuery.of(context).size.height*.55,
                  width: MediaQuery.of(context).size.height*.9,
                 ),

                  Center(
                    child: Text('KNOCK,KNOCK! WHO IS THERE?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Center(
                    child: Text('You dont have any address saved. saving',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),),
                  ),

                  Center(
                    child: Text('address helps you checkout faster',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),),
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.04,),


                   FlatButton(
                     padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                     onPressed: (){
                       Navigator.push(context, 
                       MaterialPageRoute(builder: (BuildContext context)=>AddressMap())
                       
                       );
                     },child: Text('Add an Address',
                     style: TextStyle(
                       color:Color(0xff550d0e)
                     ),),
                     shape: RoundedRectangleBorder(side: BorderSide(
            color: Color(0xff550d0e),
            width: 1,
            style: BorderStyle.solid
          ), ),
                     
                   )

                ],),
            ),
        )

      
      
    );
      
    
  }
}