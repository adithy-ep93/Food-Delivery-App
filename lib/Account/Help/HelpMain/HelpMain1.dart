import 'package:flutter/material.dart';
import 'package:FoodDelivery/Account/Help/HelpSub/General_Issues/General_Issues.dart';
import 'package:FoodDelivery/Account/Help/HelpSub/Legal_Terms_Conditions/Legal_Terms_Conditions.dart';
import 'package:FoodDelivery/Account/Swiggy_Money/Swiggy_FAQs.dart';
import 'package:FoodDelivery/Account/Help/HelpSub/ConversationThread/Conversation.dart';
import 'package:FoodDelivery/Account/Help/HelpSub/Faqs/Faqs.dart';
import 'package:FoodDelivery/Account/Help/HelpSub/Swiggy_Super_Faqs/Swiggy_Super_Faqs.dart';

class HelpMain extends StatefulWidget {
  @override
  _HelpMainState createState() => _HelpMainState();
}

class _HelpMainState extends State<HelpMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('HELP',
        style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        
        
        child:Column(children: [

          Container(
            
            padding: EdgeInsets.all(20),
              color: Colors.grey[300],
            child: Row(children: [
            Text('Help with other quieries')
          ],),),


          GestureDetector(
            onTap: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GeneralIssues()
                        )
                        );
            },
                      child: ListTile(
              title: Text('General Issues'),
              trailing: Icon(Icons.chevron_right),),
          ),

            Divider(
              color: Colors.grey,
            ),

             GestureDetector(

               onTap: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Legal_Terms_Conditions()
                        )
                        );
               },
                            child: ListTile(
            title: Text('Legal , Terms & Conditions'),
            trailing: Icon(Icons.chevron_right),),
             ),

            Divider(
              color: Colors.grey,
            ),

             GestureDetector(
               onTap: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Faqs()
                        )
                        );
               },
                            child: ListTile(
            title: Text('FAQS'),
            trailing: Icon(Icons.chevron_right),),
             ),

            Divider(
              color: Colors.grey,
            ),

             GestureDetector(
               onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Swiggy_Super_Faqs()
                        )
                        );
               },
                            child: ListTile(
            title: Text('Yummy SUPER FAQS '),
            trailing: Icon(Icons.chevron_right),),
             ),

            Divider(
              color: Colors.grey,
            ),

             GestureDetector(

               onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(
                     builder: (
                       BuildContext context)=>
                       
                       SwiggyFaqs()
                 
                 
                 ),);
               },
                            child: ListTile(
            title: Text('Yummy MONEY FAQS'),
            trailing: Icon(Icons.chevron_right),),
             ),

           Container(
            
            padding: EdgeInsets.all(20),
              color: Colors.grey[300],
            child: Row(children: [
            Text('Conversation Archive')
          ],),),

          GestureDetector(

            onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(
                     builder: (
                       BuildContext context)=>
                       
                       Conversation()
                 
                 
                 ),);


            },
                      child: ListTile(
              title: Text('All Convesation Threads'),
              trailing: Icon(Icons.chevron_right),),
          ),


        ],)
        
        
         ,),
    );
  }
}