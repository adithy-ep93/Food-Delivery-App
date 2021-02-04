import 'package:flutter/material.dart';
//import 'package:FoodDelivery/Account/Help/conversationSub.dart';


class Conversation extends StatefulWidget {
  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('HELP AND SUPPORT',
        style: TextStyle(
          color: Colors.black
        ),) ,
        
        
        ),

        body: SingleChildScrollView(child:
        
        Column(children: [
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.grey[200],

            child: 
          
          Row(
            children: [
              Text('ALL CONVERSATION THREADS'),
            ],
          )
          
          ,),

          GestureDetector(

            onTap: (){
              // Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (BuildContext context) => ConversationSub()));
            },
                      child: Column(
              children: [
                ListTile(
                  
                  title: Text('I have a query related to placing an order'),
                  subtitle: Text('General issue | January 9, 4:16 pm'),
                  
                  
                  
                  
                  trailing: Icon(Icons.chevron_right),),

                  Container(
                    padding: EdgeInsets.fromLTRB(15,0,0,0),
                    child: Row(
                      children: [
                        Icon(Icons.message_outlined),

                        SizedBox(width: MediaQuery.of(context).size.width*.02,),

                        Text('Closed on January 16, 2:50 PM'),
                        
                      ],
                    ),

                    
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

              ],
            ),
          ),

          Divider(
                  thickness: 15,
                  color: Colors.grey[200],
                  ),


          GestureDetector(
                      child: Column(
              children: [
                ListTile(
                  
                  title: Text('I have a payment or refund related query'),
                  subtitle: Text('General issue | January 9, 4:16 pm'),
                  
                  trailing: Icon(Icons.chevron_right),),

                  Container(
                    padding: EdgeInsets.fromLTRB(15,0,0,0),
                    child: Row(
                      children: [
                        Icon(Icons.message_outlined),

                        SizedBox(width: MediaQuery.of(context).size.width*.02,),

                        Text('Closed on January 9, 5:18 PM'),
                        
                      ],
                    ),

                    
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  Divider(
                    thickness: 15,
                    color: Colors.grey[200],
                    ),


              ],
            ),
          ),





        ],)
        
        ,),
      
    );
  }
}