import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Signup extends StatelessWidget {

  // this allows us to access the TextField text
  //TextEditingController textFieldController = TextEditingController();
  //final _controllerNumber = TextEditingController() ;

  IconData get k => null;

   var isDisable=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
              
      appBar: AppBar(

        toolbarHeight: 120, // Set this height

            leading: GestureDetector(
              // onTap: (){
              //    Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (BuildContext context) =>HomeFurnishing()));
              // },
              // child: Icon(Icons.arrow_back_sharp,
              // color: Colors.black,),
            ),
     
              flexibleSpace: Container(
                  
                  color: Colors.grey[300],
                   
                
                  child: Column(
                    children: [
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(20,5,20,0 ),
                          // child: Icon(Icons.arrow_back_sharp,
                          // color: Colors.black,),
                        // ),



                        Padding(
                          padding: const EdgeInsets.fromLTRB(20,25,10,0 ),
                          child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
        
                             child: Icon(Icons.arrow_back_sharp,
                          color: Colors.black,),
                          
                      ),
                    ],
                  ),
                        ),
              
              

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20,20,20,10 ),
                          child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
        
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold
                              ), 
                            ),
                          
                      ),
                    ],
                  ),
                        ),

                  SizedBox(height: 5.0,),


                  Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,5 ),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
        
                            child: Text(
                              "Create an account with the new phone \nnumber",
                               style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold,
                              color: Colors.grey,  
                              ),
                            ),
                           
                          
                        ),
                      ],
                    ),
                  ),

                    
                    ],
                  ),
                ),
              
                  
        
        
        
      ),

      body: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.fromLTRB(20,20,20,20 ),
              child: Column(  
                children: <Widget>[  
                 


                  // Column(
                  //   children: <Widget>[
                  //     Align(
                  //       alignment: Alignment.centerLeft,
          
                  //         child: Text(
                  //           "SIGN UP",
                  //           style: TextStyle(
                  //           fontSize: 20.0, fontWeight: FontWeight.bold
                  //           ), 
                  //         ),
                        
                  //     ),
                  //   ],
                  // ),


                    
                  //    SizedBox(height: 15.0,),

                  //   Padding(
                  //     padding: const EdgeInsets.fromLTRB(10,10,10,10),
                  //     child: Text(  
                  //       'Enter your phone number to proceed',  
                  //       style: TextStyle(
                  //         fontSize: 15.0, fontWeight: FontWeight.bold
                  //       ),    
                  // ),
                  //   ), 

                  //   Column(
                  //   children: <Widget>[
                  //     Align(
                  //       alignment: Alignment.centerLeft,
          
                  //         child: Text(
                  //           "Create an account with the new phone \nnumber",
                  //            style: TextStyle(
                  //           fontSize: 12.0, fontWeight: FontWeight.bold,
                  //           color: Colors.grey,  
                  //           ),
                  //         ),
                         
                        
                  //     ),
                  //   ],
                  // ),

                    
                     SizedBox(height: 25.0,),

                  //    Text(  
                  //     '10 digit mobile number',  
                  //     style: TextStyle(
                  //       fontSize: 15.0, fontWeight: FontWeight.bold
                  //     ),    
                  // ), 


                       Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
          
                          child: Text(
                            "10 digit mobile number",
                             style: TextStyle(
                            fontSize: 12.0, 
                            color: Colors.grey,  
                            //fontWeight: FontWeight.bold, 
                          
                            ),
                          ),
                        
                      ),
                    ],
                  ),
                    

                    SizedBox(height: 10.0,),

                    //  Text(
                    //       '+91 9562854701',
                    //       style: TextStyle(
                    //         decoration: TextDecoration.underline,
                    //         decorationColor: Colors.orange[900],
                    //       ),
                    //     ),

                      Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
          
                          child: Text(
                            "+91 9562854701 ", 
                             style: TextStyle(
                                fontSize: 15.0, 
                                //fontWeight: FontWeight.bold,
                                //decoration: TextDecoration.underline,
                               // decorationColor: Colors.orange[900],
                            ),
                 
                          ),
                       
                      ),
                    ],
                  ),
                    
              //       Expanded(
              // child: Divider()
              //    ),
              Divider(),
                    
                    SizedBox(height: 25.0,),

                    Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
          
                          child: 
                        //   TextField(
                        //   autocorrect: true,
                        //   decoration: InputDecoration(
                        //     hintText: 'EMAIL ADDRESS',        
                        //     enabledBorder: UnderlineInputBorder(      
                        //       borderSide: BorderSide(color: Colors.red),   
                        //       ),  
                        //     focusedBorder: UnderlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.green),
                        // ),  
                        // ),
                        // ),
                      

                          TextFormField(
                            //controller: _controllerNumber,
                                    decoration: InputDecoration(
                                  
                                      labelText: 'EMAIL ADDRESS',
                                       enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey),
                                //  when the TextFormField in unfocused 
                              ) ,
                                      focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.orange[700]),
                                    //  when the TextFormField in focused 
                              ) ,
                                      
                                    ),
                                  ),

                          //Text(
                          //   "EMAIL ADDRESS",
                          //    style: TextStyle(
                          //   fontSize: 14.0, 
                          //   color: Colors.grey,  
                          //   //fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        
                      ),
                    ],
                  ),
                    //SizedBox(height: 5.0,),
                    //Divider(),
                    

                    SizedBox(height: 55.0,),

                    Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
          
                          child:
                          new TextFormField(
                          //controller: passTextController,
                          decoration: new InputDecoration(
                              labelText: "NAME",
                              
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                //  when the TextFormField in unfocused 
                              ) ,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange[700]),
                                //  when the TextFormField in focused 
                              ) ,
                              border: UnderlineInputBorder(
                              )
                          ),
                          keyboardType: TextInputType.text,
                          //obscureText: true,
                        ),

                          //TextFormField(
                          //           decoration: InputDecoration(
                          //             labelText: 'NAME',  
                                        
                          //           ),
                          //         ), 

                          // Text(
                          //   "NAME",
                          //    style: TextStyle(
                          //   fontSize: 12.0, 
                          //   color: Colors.grey,  
                          //   //fontWeight: FontWeight.bold, 
                          
                          //   ),
                          // ),
                        
                      ),
                    ],
                  ),
                  // Divider(
                  //   color: Colors.orange[700],
                  // ),

                  SizedBox(height: 15.0,),
                   Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
          
                          child: RichText(
                                    text: TextSpan(
                                        text: 'By creating an account, I accept the',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                        children: <TextSpan>[
                                          TextSpan(text: ' Terms And Conditions',
                                              style: TextStyle(
                                                  color: Colors.blueAccent, fontSize: 12),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // navigate to desired screen
                                                }
                                          )
                                        ]
                                    ),
                                  ),
                        
                      ),
                    ],
                  ),
                  // Divider(),

                    SizedBox(height: 40.0,),
                     

                      
                      RaisedButton(
                        onPressed:() {
                         // var number_entered =_controllerNumber.text;
                        } , 
                              child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.center,
                            
                                            child: Text(
                                              "SIGN UP",
                                              style: TextStyle(
                                              fontSize: 15.0, fontWeight: FontWeight.bold
                                              ), 
                                            ),
                                          
                                        ),
                                      ],
                                    ),
                              color: Colors.orange[500],
                              shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),) ,
                              padding: EdgeInsets.fromLTRB(20, 15, 25, 20),),
                    
                           
                ],  
              ),
            ),
      ),  
  
        );
    }
}
