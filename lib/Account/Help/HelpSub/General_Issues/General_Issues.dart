import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class GeneralIssues extends StatefulWidget {
  @override
  _GeneralIssuesState createState() => _GeneralIssuesState();
}

class _GeneralIssuesState extends State<GeneralIssues> {
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
          child: Icon(
            Icons.arrow_back_sharp, color: Colors.black
            ),
        ),
        title: Text(
          "HELP AND SUPPORT",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView( 
       
              child: new Column(
            children: [
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "GENERAL ISSUES",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black87,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*.02,),

             Column(children: [

              

              ListTile(
                      
                      title: ExpandablePanel(

                      header: Text( 'What is Yummy Customer Care Number?',
                        style: TextStyle(
                              fontSize: 16.0,
                             //color: Colors.black,
                              //fontWeight: FontWeight.bold,
                            ),
                        maxLines: 1,
          
                      ),
                      expanded: Align(
                      alignment: Alignment.centerLeft,
            
                      child: Column(
                        children: [
                            Align( alignment: Alignment.centerLeft,
                                child: Text('\n'
                                      'away from a single customer care number to \n'
                                      'a comprehensive chat-based support system for\n '
                                      'quick and easy resolution.You no longer have to\n'
                                      'away from a single customer care number to \n'
                                      'a comprehensive chat-based support system for\n '
                                      'We value our customer\'s time and hence moved\n'
                                      'away from a single customer care number to \n'
                                      'a comprehensive chat-based support system for\n '
                                      'We value our customer\'s time and hence moved\n'
                                      'away from a single customer care number to \n'
                                      'a comprehensive chat-based support system for\n ',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black54,
                                        //fontWeight: FontWeight.bold,
                                        ),
                                          softWrap: true,
                                      ),
                                  ) ,

               
              
                 Column(
                   children: [
                            Align(alignment: Alignment.centerLeft,
                                                                            
                              child: Container(
                              height: 50,
                              width: 180,  
                              padding: EdgeInsets.all(15),
                              //margin: EdgeInsets.fromLTRB(20,10,0,0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff550d0e), width: 1),
                                borderRadius: BorderRadius.circular(0),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey[50],
                                    offset: new Offset(0.0, 0.0),
                                  ),
                                ],
                              ),
                              child: 
                                  
                                  Center(
                                    child: Text(
                                        'EMAIL US',
                                        style: TextStyle(
                                            color: Color(0xff550d0e),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                    ),
                                  )
                                
                               ),

                          ),


                          SizedBox(height: MediaQuery.of(context).size.height*.01,),
           
                        
                          Column(children: [
                                  Align(alignment: Alignment.centerLeft,
                                                                                          
                                      child: Text( '           We will revert within 6-12 hrs',style: TextStyle(
                                      fontSize: 10.0,
                                      //color: Colors.black,
                                      //fontWeight: FontWeight.bold,
                                        ),
                      
                                       ),
                                    ),
                                            
                                  ],
                               ),
                        
                               
                      ],
                    ),
                 
               ],
              ),
            ),
            tapHeaderToExpand: true,
            hasIcon: false,

      
        ),
      ),
                    
                  Divider(color: Colors.black12,),
             
                    ListTile(
                      title: Text('I have a query related to placing an order',
                      style: TextStyle(
                              fontSize: 16.0,
                             // color: Colors.black87,
                              //fontWeight: FontWeight.bold,
                            ),
                            ),
                      trailing: Icon(Icons.chevron_right),
                       ),
                      Divider(color: Colors.black12,),
             

                      ListTile(
                                title: Text('I am unable to log in on Swiggy',
                            style: TextStyle(
                                        fontSize: 16.0,
                                      // color: Colors.black87,
                                        //fontWeight: FontWeight.bold,
                                      ),
                            ),
                            trailing: Icon(Icons.chevron_right),
                      ),
                      Divider(color: Colors.black12,),

                    ListTile(
                              title: Text('I have a payment or refund related query',
                          style: TextStyle(
                                      fontSize: 16.0,
                                    // color: Colors.black87,
                                      //fontWeight: FontWeight.bold,
                                    ),
                          ),
                          trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(color: Colors.black12,),


                  ListTile(
                            title: Text('I have a coupon related query ',
                        style: TextStyle(
                                    fontSize: 16.0,
                                  // color: Colors.black87,
                                    //fontWeight: FontWeight.bold,
                                  ),
                        ),
                        trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(color: Colors.black12,),

             ListTile(
                      
                      title: ExpandablePanel(
                      header: Text( 'I want to unsubscribe from Yummy\ncommunications',style: TextStyle(
                              fontSize: 16.0,
                             //color: Colors.black,
                              //fontWeight: FontWeight.bold,
                            ),
                      maxLines: 1,
          
                        ),
                      expanded: Align(
                      alignment: Alignment.centerLeft,
            
              child: Text('\n'
                'Please drop us an email mensioning the channels\n'
              'you would like to be unsubscribed from. We will \n'
              'take an action and conform within 24-48 hours.',
              style: TextStyle(
                              fontSize: 13.0,
                             color: Colors.black54,
                              //fontWeight: FontWeight.bold,
                            ),
                softWrap: true,
                      ),
                    ),
                tapHeaderToExpand: true,
                hasIcon: false,

              
              ),
            ),
                    Divider(color: Colors.black12,),

                     ListTile(
                      
                      title: ExpandablePanel(
                      header: Text( 'I have a query related to donations',
                      style: TextStyle(
                              fontSize: 16.0,
                             //color: Colors.black,
                              //fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
          
                        ),
                         expanded: Align(
                          alignment: Alignment.centerLeft,
            
                              child: Text('\n'
                                'All donations related queries are being handled by\n'
                              'our donations partner.Please drop us an email \n'
                              'and you\'ll hear back from the team within 24\nhours.',style: TextStyle(
                                              fontSize: 13.0,
                                            color: Colors.black54,
                                              //fontWeight: FontWeight.bold,
                                                ),
                                    softWrap: true,
                                  ),
                                ),
                            tapHeaderToExpand: true,
                            hasIcon: false,

                          
                          ),
                       ),
                    Divider(color: Colors.black12,),

             
             ],)
            
            ],
          ),
        
      ),

    );
  }
}


 