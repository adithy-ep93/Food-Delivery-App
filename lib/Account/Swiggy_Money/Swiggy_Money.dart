import 'package:flutter/material.dart';
import 'package:FoodDelivery/Account/Swiggy_Money/Swiggy_FAQs.dart';
import 'package:FoodDelivery/Account/Swiggy_Money/Activate_Swiggy.dart';
class SwMoney extends StatefulWidget {
  @override
  _SwMoneyState createState() => _SwMoneyState();
}

class _SwMoneyState extends State<SwMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffDfd7cc),
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
       
       backgroundColor: Colors.transparent,

      

        
      ),
        body: SingleChildScrollView(
                  child: Container(
            
                child: Column(children: [
                  Image(image: AssetImage('assets/Home/Splash.jpg',
                  ),
                  //height: MediaQuery.of(context).size.height*.55,
                 // width: MediaQuery.of(context).size.height*.99,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Center(
                    child: Text('Activate Yummy Money by entering any Government'),
                  ),
                  Center(
                    child: Text('ID number (PAN , Driving License , Passport , etc.)'),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.04,),

                   Center(
                    child: Text('By continuing, you agree to our Terms & conditions'),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  FlatButton(onPressed: (){
                            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ActivateSwiggy()));
                        }, child: Text('ACTIVATE YUMMY MONEY',
                        style: TextStyle(
                          color:Color(0xffDfd7cc),
                          fontSize: 18
                        ),
                        
                        ),
                        color: Color(0xff550d0e),
                       
                          padding: EdgeInsets.fromLTRB(35, 15, 35, 15),),

                          SizedBox(height: MediaQuery.of(context).size.height*.03,),

                          Divider(thickness: 1,
                          color: Colors.grey,),

                          SizedBox(height: MediaQuery.of(context).size.height*.02,),

                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              
                              children: [
                                Text('NOTE:'),
                              ],
                            ),
                          ),
                           SizedBox(height: MediaQuery.of(context).size.height*.02,),

                          Container(
                            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: Column(
                              
                              children: [
                                Text('I . Yummy has been testing its digital wallet experience for some time, with some reports suggesting its existence as a pilot since late December. However, up until now, the experience was limited to receive refunds.',
                                style: TextStyle(
                                  
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*.02,),

                          Container(
                            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: Column(
                              
                              children: [
                                Text('II . Yummy has been testing its digital wallet experience for some time, with some reports suggesting its existence as a pilot since late December. However, up until now, the experience was limited to receive refunds.',
                                style: TextStyle(
                                  
                                ),),
                              ],
                            ),
                          ),

                           SizedBox(height: MediaQuery.of(context).size.height*.02,),

                          Container(
                            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: Column(
                              
                              children: [
                                Text('II . Yummy has been testing its digital wallet experience for some time, with some reports suggesting its existence as a pilot since late December. However, up until now, the experience was limited to receive refunds.',
                                style: TextStyle(
                                  
                                ),),
                              ],
                            ),
                          ),

                          SizedBox(height: MediaQuery.of(context).size.height*.03,),

                          Container(

                            padding: EdgeInsets.fromLTRB(15, 0, 5, 0),

                            child: Row(children: [
                              GestureDetector(

                                onTap: (){

                                   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SwiggyFaqs()
                        )
                        );

                                },

                                                              child: Text('Yummy Money FAQs',
                                
                                style: TextStyle(
                                  color: Color(0xff550d0e)
                                ),
                                
                                ),
                              ),

                              SizedBox(width: MediaQuery.of(context).size.width*.07,),

                              Text('Terms & Conditions',
                              
                              style: TextStyle(
                                color: Color(0xff550d0e)
                              ),
                              
                              ),

                              

                            ],),
                          ),

                          SizedBox(height: MediaQuery.of(context).size.height*.03,),

                ],),
            ),
        )

      
      
    );
      
    
  }
}