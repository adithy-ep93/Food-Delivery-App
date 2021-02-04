
import 'package:flutter/material.dart';
import 'package:FoodDelivery/screens/AddAddressMap.dart';
import 'package:FoodDelivery/screens/EditAddressMap.dart';


class ManageAddressSub extends StatelessWidget {

final String text;

final String text1;

  // receive data from the FirstScreen as a parameter
  ManageAddressSub({Key key, @required this.text,this.text1}) : super(key: key);


  createAlertDialog(BuildContext context){
    return showDialog(context: context,builder:(context){
        return AlertDialog(
          title: Text('Delete Address'),
          content: Container(
            height: MediaQuery.of(context).size.height*.1,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Are you sure you want to delete'),
                  ],
                ),
                 Row(
                   children: [
                     Text('this address?'),
                   ],
                 ),

                 SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                   children: [

                      SizedBox(width: MediaQuery.of(context).size.width*.2,),
                     GestureDetector(

                       onTap: (){
                         Navigator.pop(context);
                       },
                                            child: Text('NO',
                       style: TextStyle(
                         color: Colors.orange[700],
                       ),),
                     ),
                     SizedBox(width: MediaQuery.of(context).size.width*.2,),
                     GestureDetector(
                       onTap: (){

                       },
                                            child: Text('YES',
                       style: TextStyle(
                         color: Colors.orange[700],
                       ),),
                     ),
                   ],
                 ),

              ],
            ),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black,//backArrow color
        ),
        backgroundColor: Colors.white,
        title: Text('Manage Address',
        style: TextStyle(
          color: Colors.black
        ),),
      ),

      body: SingleChildScrollView(
        child: Column(children: [
         Container(
           padding: EdgeInsets.all(20),
           color: Colors.grey[200],
           child: Row(
             
             children: [
              Text('SAVED ADDRESS',
              style: TextStyle(
                fontSize: 16
              ),)
           ],),
         ),

        SizedBox(height: MediaQuery.of(context).size.height*.03,),

         Row(
           children: [

              SizedBox(width: MediaQuery.of(context).size.width*.05,),

              Icon(
                Icons.home_outlined,
                size: 35
                ),

               SizedBox(width: MediaQuery.of(context).size.width*.05,),

               Text('HOME',
               style: TextStyle(
                 fontSize: 19,
                 fontWeight: FontWeight.bold
               ),
               ) 
           ],
         ),

        SizedBox(height: MediaQuery.of(context).size.height*.02,),

        Row(children: [
           SizedBox(width: MediaQuery.of(context).size.width*.06,),
          Text(text +' , ',
           style: TextStyle(
            fontSize: 16
          ),),
           
          Text(text1 +' , ',
           style: TextStyle(
            fontSize: 16
          ),),
        ],),

        SizedBox(height: MediaQuery.of(context).size.height*.02,),

        Row(children: [
          SizedBox(width: MediaQuery.of(context).size.width*.06,),
          GestureDetector(

                          onTap: (){
                             Navigator.push(context, 
                       MaterialPageRoute(builder: (BuildContext context)=>EditAddressMap())
                       
                       );
                          },

                      child: Text('EDIT',
            style: TextStyle(
              color: Color(0xff550d0e),
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),

          SizedBox(width: MediaQuery.of(context).size.width*.06,),
          GestureDetector(

                      onTap: (){
                        createAlertDialog(context);
                      },

                      child: Text('DELETE',
            style: TextStyle(
              color: Color(0xff550d0e),
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),


        ],),
        SizedBox(height: MediaQuery.of(context).size.height*.02,),
        Divider(thickness: 1,),

        SizedBox(height: MediaQuery.of(context).size.height*.02,),

        FlatButton(
                     padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                     onPressed: (){

                        Navigator.push(context, 
                       MaterialPageRoute(builder: (BuildContext context)=>AddressMap())
                       
                       );
                      
                     },child: Text('ADD NEW ADDRESS',
                     style: TextStyle(
                       color:Colors.greenAccent,
                       fontWeight: FontWeight.bold,
                       fontSize: 16
                     ),),
                     shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.greenAccent,
            width: 2,
            style: BorderStyle.solid
          ), ),
                     
                   )

        ],),
        ),
      
    );
  }
}