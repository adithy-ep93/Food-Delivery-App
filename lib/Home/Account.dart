

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'../Account/My_Account/ManageAddress.dart';
import 'package:FoodDelivery/Account/My_Account/Favourites.dart';
import 'package:FoodDelivery/Account/My_Account/Settings.dart';
import 'package:FoodDelivery/Account/Swiggy_Money/Swiggy_Money.dart';
import 'package:FoodDelivery/Account/Help/HelpMain/HelpMain1.dart';
import 'package:FoodDelivery/Account/My_Account/Offers/Offers.dart';
import 'package:FoodDelivery/Account/PaymentsRefunds/Refundstatus.dart';
import 'package:FoodDelivery/Account/PaymentsRefunds/Paymentmodes.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      


        body: SingleChildScrollView(
                  child: Container(
            padding: EdgeInsets.fromLTRB(10, 30, 5, 5),
            child:Column(
              children: [
                Row(children: [
                
                Text('Your Name',
                style: TextStyle(
                  fontSize: 22
                ),),

          SizedBox(width: MediaQuery.of(context).size.width*.5),

                GestureDetector(
                  onTap: (){
                    _EditAccount(context);
                  },
                            child: Text('Edit',
                   style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff550d0e),
                  ),),
                )
          ],),
              SizedBox(height: MediaQuery.of(context).size.height*.01),
              Row(children: [
                Text('8547541257  .',
                style: TextStyle(
                  fontSize: 18
                ),),

                Text('  Name@gmail.com',
                style: TextStyle(
                  fontSize: 18
                ),)

              ],),
                SizedBox(height: MediaQuery.of(context).size.height*.01,),


                Divider(thickness: 2,
                color: Colors.black,),

                ExpansionTile(
                  title: Text('My Account',
                   style: TextStyle(color: Colors.black),),
                  subtitle: Text('Address , Favourites & Offers',
                   style: TextStyle(color: Colors.black),),
                  children: [

                    GestureDetector(

                      onTap: ()=>{
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ManageAddress()
                        )
                        ),
                      },
                                          child: ListTile(
                           leading: IconButton(
                      icon: Icon(Icons.home_outlined),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: (){
                         
                      },
                  ),
                  title: Text('Manage Address'),
                 
                   trailing: Icon(Icons.chevron_right),
                ),
                    ),


                GestureDetector(
                  onTap: (){

                     Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Favourites()
                        )
                        );

                  },
                                  child: ListTile(
                           leading: IconButton(
                      icon: Icon(Icons.favorite_outline),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: (){
            
                      },
                    ),
                    title: Text('Favourites'),
                   
                     trailing: Icon(Icons.chevron_right),
                  ),
                ),


                GestureDetector(

                  onTap: (){

                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Offers()
                        )
                        );

                  },
                                  child: ListTile(
                           leading: IconButton(
                      icon: Icon(Icons.local_offer_outlined),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: (){
            
                      },
                    ),
                    title: Text('Offers'),
                   
                     trailing: Icon(Icons.chevron_right),
                  ),
                ),


                GestureDetector(

                          onTap: (){

                     Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Settings()
                        )
                        );

                  },
                                  child: ListTile(
                           leading: IconButton(
                      icon: Icon(Icons.settings_outlined),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: (){
            
                      },
                    ),
                    title: Text('App Settings'),
                   
                     trailing: Icon(Icons.chevron_right),
                  ),
                ),
                
                  ],
                ),
                 Divider(
                color: Colors.black,),

                ExpansionTile(

                   title: Text('PayMents & Refunds',
                    style: TextStyle(color: Colors.black),),
                  subtitle: Text('Refund Status & Payment Method',
                   style: TextStyle(color: Colors.black),),
                  children: [
                    GestureDetector(

                      onTap: (){

                         Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Refundstatus()
                        )
                        );

                      },
                                          child: ListTile(
                           leading: IconButton(
                      icon: Icon(Icons.payment_outlined),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: (){
            
                      },
                  ),
                  title: Text('Refund Status'),
                 
                   trailing: Icon(Icons.chevron_right),
                ),
                    ),


                GestureDetector(

                  onTap: (){
                    
                         Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Paymentmodes()
                        )
                        );
                  },
                                  child: ListTile(
                           leading: IconButton(
                      icon: Icon(Icons.payment_outlined),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: (){
            
                      },
                    ),
                    title: Text('Payment Methods',
                    ),
                   
                     trailing: Icon(Icons.chevron_right),
                  ),
                ),
                  ],
                 
                ),
                 Divider(
                color: Colors.black,),
                
                GestureDetector(
                                onTap: (){
                                   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SwMoney()
                        )
                        );

                                },
                                  child: ListTile(
                    title: Text('Yummy Money'),
                    subtitle: Text('View Account Balance & Transactions History '),
                     trailing: Icon(Icons.chevron_right),
                  ),
                ),
                 Divider(
                color: Colors.black,),

                GestureDetector(

                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HelpMain()
                        )
                        );
                  },
                                  child: ListTile(
                    title: Text('Help'),
                    subtitle: Text('FAQS & Links'),
                     trailing: Icon(Icons.chevron_right),
                  ),
                ),
                 Divider(
                color: Colors.black,),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                
                
                
                GestureDetector(

                  onTap: (){
                    createAlertDialog(context);
                  },
                                  child: Container(
                    color: Colors.grey[200],
                    height: MediaQuery.of(context).size.height*.08,
                    child: Row(
                        
                        children: [
                          
                            Text('LOGOUT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                          SizedBox(width:MediaQuery.of(context).size.width*.59,),

                          IconButton(
                        icon: Icon(FontAwesomeIcons.powerOff),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: (){
            
                        },
                      ),

                        ],),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                Center(
                  child: 
                  Text('App Version 3.531.1(935)',
                  
                  style: TextStyle(
                    color:Colors.grey
                  ),

                  ),)


              ],
            ),
            
            ),
        )

      
      
    );
  }
}



void _EditAccount(context){
 final _formKey = GlobalKey<FormState>();  
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return Container(
            
            height: MediaQuery.of(context).size.height *60,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Text('Edit Account',
                    style: TextStyle(
                      color: Color(0xff550d0e),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    
                    ),
                  ],
                ),

                

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(
                   children: [
                     Text('Phone Number',
                     style: TextStyle(
                       color:Colors.grey[500],
                     ),)
                   ],
                ),
                
                
               //  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                Form(
                        key: _formKey, 
                        child: Column(
                          children: [
                            TextFormField(

                              decoration:InputDecoration(prefixText: '+91' ) ,
                              
                              maxLength: 10,

                              keyboardType: TextInputType.number,
              validator: (value) {
                if (value.isEmpty ) {
                  return 'Please enter the Number';
                }else if(value.length<10){
                  return 'Must need 10 Digit';
                }
                return null;
              },
            ),

             Row(
                   children: [
                     Text('Email Address',
                     style: TextStyle(
                       color:Colors.grey[500],
                     ),)
                   ],
                ),

            TextFormField(

                              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty ) {
                  return 'Please enter the Email';
                }
                return null;
              },
            ),
                          ],
                        ),

            
                   ),
           SizedBox(height: 20,),
            RaisedButton(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
               onPressed: () {
                   // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')
            )
            
            );
                  }
                },
              child: Text('UPDATE',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              textColor: Color(0xffDfd7cc),
              color:  Color(0xff550d0e),
            ),
          
           
              ],
            ),
          )
          
          );
  });
}


 createAlertDialog(BuildContext context){
    return showDialog(context: context,builder:(context){
        return AlertDialog(
       
          content: Container(
            height: MediaQuery.of(context).size.height*.1,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Are you sure you want to logout '),
                  ],
                ),
                

                 SizedBox(height: MediaQuery.of(context).size.height*.04,),

                   Row(
                   children: [

                      SizedBox(width: MediaQuery.of(context).size.width*.15,),
                     GestureDetector(

                       onTap: (){
                         Navigator.pop(context);
                       },
                                            child: Text('CANCAL',
                       style: TextStyle(
                         color: Color(0xff550d0e),
                       ),),
                     ),
                     SizedBox(width: MediaQuery.of(context).size.width*.1,),
                     GestureDetector(
                       onTap: (){

                       },
                                            child: Text('LOGOUT',
                       style: TextStyle(
                         color: Color(0xff550d0e),
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