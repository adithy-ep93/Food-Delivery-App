import 'package:FoodDelivery/HomeSub/BuyAnythingPages/BuyAnything.dart';
import 'package:FoodDelivery/HomeSub/BuyAnythingPages/BuyAnythingSub.dart';
import 'package:FoodDelivery/HomeSub/BuyAnythingPages/SelectAStore.dart';
import 'package:FoodDelivery/HomeSub/Genie/GenieRegister.dart';
import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickupDrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Genie extends StatefulWidget {
  @override
  _GenieState createState() => _GenieState();
}

final List imgList = [

'assets/Home/Genie/g2.jpg',
'assets/Home/Genie/g3.jpg',
'assets/Home/Genie/g4.jpg',


];

class _GenieState extends State<Genie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: Column(
        
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          Row(
            children: [
               SizedBox(width: MediaQuery.of(context).size.width*.1,),
              Center(
                
                child: FloatingActionButton.extended(
                  label: Text('Bussiness owner? Try Genie for bussiness',
                  style: TextStyle(fontSize: 11),),

                  icon: Icon(Icons.arrow_downward),
                  
                  backgroundColor: Colors.black87
                  ,
  onPressed: (){},
),
              ),
            ],
          ),
        ],
      ),

            appBar: AppBar(
              title:Text('Genie'),
                elevation: 0,
              backgroundColor: Colors.indigo[900],
            ),

            body: SingleChildScrollView(
              
              
              child: 
            
            Column(
              children: [



                Container(
                  color: Colors.indigo[900],
                  child: Column(children: [
                    

                      SizedBox(height: MediaQuery.of(context).size.height*.01,),

                      Row(children: [

                        SizedBox(width: MediaQuery.of(context).size.width*.04,),

                        Text('Genie',
                        style: TextStyle(

                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                          
                        ),)
                      ],),

                       SizedBox(height: MediaQuery.of(context).size.height*.01,),

                       Row(children: [

                        SizedBox(width: MediaQuery.of(context).size.width*.04,),

                        Text('ANYTHING YOU NEED , DELIVERED',
                        style: TextStyle(

                          color: Colors.white,
                          
                          
                        ),)
                      ],),

                       SizedBox(height: MediaQuery.of(context).size.height*.03,),

                        GestureDetector(
                          onTap: (){
                             Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDrop()));
                          },
                                                  child: Container(
        
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),

                            constraints: BoxConstraints.expand(
                            height: MediaQuery.of(context).size.height*.2
                                  ),
                            child: imageSlider(context)
                                  ),
                        ),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10,20,10,20),
                                  child: Card(
                                    
                                    color: Colors.white,
                                    child: Column(children: [

                                      SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    Row(
                                      children: [
                                        SizedBox(width: MediaQuery.of(context).size.width*.15,),
                                        Text('Pickup or Drop',
                                        style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                        Text(' any items',
                                        style: TextStyle(fontSize: 20,
                                        ),)
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    FlatButton(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                                      color: Color(0xff550d0e),
                                      onPressed: (){
                                          Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDrop()));
                                      },
                                      child: Text('ADD PICKUP / DROP DETAILS',
                                      style: TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffDfd7cc)),),
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Container(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Divider(color: Colors.black,
                                      thickness: .7,),
                                    ),

                                       SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                       Text('Some thing we can pick or drop for you'),

                                       SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                  Row(
      
                        
                                         children:<Widget> [       
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                          SizedBox(
                                          height: MediaQuery.of(context).size.height*.2,
                                          width: MediaQuery.of(context).size.width*0.85,
                                                  child: ListView(
                                                  scrollDirection: Axis.horizontal,
                              
                              
                                children: <Widget>
                                [
                                    SingleChildScrollView(
                                                                          child: Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                               //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                               Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDrop()));

                            }, child: Image.asset('assets/Home/Genie/gi1.jpg'),
                              ),

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                          ],
                                        ),
                                      ),
                                    ),


                            SingleChildScrollView(
                                                          child: Container(
                                        width: MediaQuery.of(context).size.width*0.32,
                                 //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                               Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDrop()));

                              }, child: Image.asset('assets/Home/Genie/gi2.jpg'),
                                ),

                              SizedBox(height: MediaQuery.of(context).size.height*.015,),

                                          ],
                                        ),
                                      ),
                            ),

                            

                             SingleChildScrollView(
                                                            child: Container(
                                        width: MediaQuery.of(context).size.width*0.26,
                                 //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(
                                              
                                              
                                              onPressed: (){
                                               Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDrop()));

                            }, child: Image.asset(
                                
                                'assets/Home/Genie/gi3.jpg'),
                                ),

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                
                                          ],
                                        ),
                                      ),
                             ),

                          

                          SingleChildScrollView(
                                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.26,
                                 //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                               Navigator.push(context, 
                            MaterialPageRoute(builder:(BuildContext context)=>
                            PickupDrop()));

                              }, child: Image.asset('assets/Home/Genie/gi5.jpg'),
                                ),

                              SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                          ],
                                        ),
                                      ),
                          ),


                                SingleChildScrollView(
                                                                  child: Container(
                                        width: MediaQuery.of(context).size.width*0.26,
                               //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                               Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDrop()));

                            }, child: Image.asset('assets/Home/Genie//gi4.jpg'),
                              ),

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                              
                                          ],
                                        ),
                                      ),
                                ),


                                ],
                            ),
                          ),              

                          
                        ],
                      ),

                                  ],),),
                                ),

                                Container(
                                  padding: EdgeInsets.fromLTRB(10,0,10,20),
                                  child: Card(
                                    
                                    color: Colors.white,
                                    child: Column(children: [

                                      SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    Row(
                                      children: [
                                        SizedBox(width: MediaQuery.of(context).size.width*.15,),
                                        Text('Buy Anything',
                                        style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                        Text(' from any store',
                                        style: TextStyle(fontSize: 20,
                                        ),)
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    FlatButton(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                                      color: Color(0xff550d0e),
                                      onPressed: (){
                                        Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          BuyAnything()));
                                      },
                                      child: Text('FIND A STORE',
                                      style: TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffDfd7cc)),),
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Container(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Divider(color: Colors.black,
                                      thickness: .7,),
                                    ),

                                       SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                       Text('Some stores we can buy from for you'),

                                       SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                  Row(
      
                        
                                         children:<Widget> [       
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                          SizedBox(
                                          height: MediaQuery.of(context).size.height*.2,
                                          width: MediaQuery.of(context).size.width*0.85,
                                                  child: ListView(
                                                  scrollDirection: Axis.horizontal,
                              
                              
                                children: <Widget>
                                [
                                    SingleChildScrollView(
                                                                          child: Container(
                                        width: MediaQuery.of(context).size.width*0.3,
                               //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                                Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          BuyAnythingSub()));

                            }, child: Image.asset('assets/Home/Genie/gi6.jpg'),
                              ),

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                          ],
                                        ),
                                      ),
                                    ),


                            SingleChildScrollView(
                                                          child: Container(
                                        width: MediaQuery.of(context).size.width*0.32,
                                 //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                                Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          SelectAStore()));

                              }, child: Image.asset('assets/Home/Genie/gi7.jpg'),
                                ),

                              SizedBox(height: MediaQuery.of(context).size.height*.015,),

                                          ],
                                        ),
                                      ),
                            ),

                            

                             SingleChildScrollView(
                                                            child: Container(
                                        width: MediaQuery.of(context).size.width*0.26,
                                 //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(
                                              
                                              
                                              onPressed: (){
                                                Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          BuyAnything()));

                            }, child: Image.asset(
                                
                                'assets/Home/Genie/gi8.jpg'),
                                ),

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                
                                          ],
                                        ),
                                      ),
                             ),

                          

                          SingleChildScrollView(
                                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.26,
                                 //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(onPressed: (){
                                                Navigator.push(context, 
                            MaterialPageRoute(builder:(BuildContext context)=>
                            BuyAnything()));

                              }, child: Image.asset('assets/Home/Genie/gi9.jpg'),
                                ),

                              SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                          ],
                                        ),
                                      ),
                          ),


                                SingleChildScrollView(
                                                                  child: Container(
                                        width: MediaQuery.of(context).size.width*0.26,
                               //height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          children: [
                                            FlatButton(
                                              
                                              onPressed: (){
                                                Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          BuyAnything()));

                            }, child: Image.asset('assets/Home/Genie//gi10.jpg'),
                              ),

                            SizedBox(height: MediaQuery.of(context).size.height*.01,),
                              
                                          ],
                                        ),
                                      ),
                                ),
                                ],
                            ),
                          ),              

                          
                        ],
                      ),

                                  ],),),
                                ),


                                SizedBox(height: MediaQuery.of(context).size.height*.01,),


                                Center(child: 
                                
                                Text('Here is how you can use',style: TextStyle(color: 
                                
                                Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                                
                                ),)
                                
                                ,),
                                 SizedBox(height: MediaQuery.of(context).size.height*.01,),


                                Center(child: 
                                
                                Text('Genie for your needs',style: TextStyle(color: 
                                
                                Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                                
                                ),)
                                
                                ,),

                                


                                Row(children: [

                                   SizedBox(width: MediaQuery.of(context).size.width*.01,),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 10),
                                    //height: MediaQuery.of(context).size.height*.3,
                                   //  width: MediaQuery.of(context).size.width*.5,
                                    child: Card(
   
                                      color: Colors.white,

                                      child: Column(
                                        crossAxisAlignment:CrossAxisAlignment.start ,
                                        children: [

                                           SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                        Row(
                                          children: [

                                             SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                            Text('Buy Anything',
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),

                                         SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                        Row(
                                          children: [

                                            SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                            Text('List items to buy & we',
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 14,
                                              
                                            ),),
                                             SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            
                                             SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                            Text('we  will get for you',
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 14,
                                              
                                            ),),
                                          ],
                                        ),

                                        SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                        
                                        Row(
                                          children: [
                                            SizedBox(width: MediaQuery.of(context).size.width*.01,),
                                            FlatButton(
                                              color: Colors.indigo[900],
                                              onPressed: (){

                                              },
                                              child: Row(children: [
                                                Text('HOW IT WORKS',
                                                style: TextStyle(
                                                  color:Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:13
                                                ),),

                                               Icon(Icons.play_arrow,
                                               color: Colors.white,)

                                            ],),),


                                          ],
                                        ),

                                         SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    ],),),
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5,10),
                                    //height: MediaQuery.of(context).size.height*.3,
                                   //  width: MediaQuery.of(context).size.width*.5,
                                    child: Card(
   
                                      color: Colors.white,

                                      child: Column(
                                        crossAxisAlignment:CrossAxisAlignment.start ,
                                        children: [

                                           SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                        Row(
                                          children: [

                                             SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                            Text('Pickup & Drop',
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),

                                         SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                        Row(
                                          children: [

                                            SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                            Text('Pickup / send from',
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 13,
                                              
                                            ),),
                                             
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            
                                             SizedBox(width: MediaQuery.of(context).size.width*.03,),
                                            Text('get for you',
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 13,
                                              
                                            ),),
                                          ],
                                        ),

                                        SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                        
                                        Row(
                                          children: [
                                            SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                            FlatButton(
                                              color: Colors.indigo[900],
                                              onPressed: (){

                                              },
                                              child: Row(children: [
                                                Text('HOW IT WORKS',
                                                style: TextStyle(
                                                  color:Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13
                                                ),),

                                               Icon(Icons.play_arrow,
                                               color: Colors.white,)

                                            ],),),
                                            
                                            SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                          ],
                                        ),

                                         SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    ],),),
                                  ),
                                ],),


                                  SizedBox(height: MediaQuery.of(context).size.height*.03,),

                                 

                  ],),
                ),



                Container(
                  color: Colors.indigo[700],
                  child: Column(children: [

                      SizedBox(height: MediaQuery.of(context).size.height*.03,),

                      Row(children: [

                        

                        Row(
                          children: [

                            SizedBox(width: MediaQuery.of(context).size.width*.04,),

                            Icon(FontAwesomeIcons.pizzaSlice,
                            color: Colors.white,),

                             SizedBox(width: MediaQuery.of(context).size.width*.02,),

                            Text('Genie',
                            style: TextStyle(

                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                              
                            ),),
                          ],
                        )
                      ],),

                       SizedBox(height: MediaQuery.of(context).size.height*.01,),

                       Row(children: [

                         SizedBox(width: MediaQuery.of(context).size.width*.13,),

                        Text('for bussiness',
                        style: TextStyle(

                          color: Colors.white,
                          
                          
                        ),)
                      ],),

                       SizedBox(height: MediaQuery.of(context).size.height*.03,),

                       
                                Container(
                                  padding: EdgeInsets.fromLTRB(20,20,20,20),
                                  child: Card(
                                    
                                    color: Colors.white,
                                    child: Column(children: [

                                      SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    Row(
                                      children: [
                                        SizedBox(width: MediaQuery.of(context).size.width*.11,),
                                        Text('Customer Deliveries',
                                        style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                        Text(' made',
                                        style: TextStyle(fontSize: 20,
                                        ),)
                                      ],
                                    ),

                                    
                                    Row(
                                      children: [
                                        SizedBox(width: MediaQuery.of(context).size.width*.11,),
                                        
                                        Text(' easier',
                                        style: TextStyle(fontSize: 20,
                                        ),)
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                     Row(
                                      children: [
                                        SizedBox(width: MediaQuery.of(context).size.width*.12,),
                                        
                                        Text('Introducing Genie Link - a faster and easier',
                                        style: TextStyle(fontSize: 14,
                                        ),)
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        SizedBox(width: MediaQuery.of(context).size.width*.12,),
                                        
                                        Text('way to manage customer order deliveries',
                                        style: TextStyle(fontSize: 14,
                                        ),)
                                      ],
                                    ),


                                    SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                    FlatButton(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                                      color: Color(0xff550d0e),
                                      onPressed: (){
                                         Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GenieRegister()
                        )
                        );
                                      },
                                      child: Text('REGISTER YOUR GINIE LINK',
                                      style: TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffDfd7cc)),),
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Container(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Divider(color: Colors.black,
                                      thickness: .7,),
                                    ),


                                      Image.asset('assets/Home/Genie/gi11.jpg'),

                                        SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                  ],),),
                                ),
                  ],),
                ),

              ],
            )
            
            ,),

    );
  }
}


Swiper imageSlider(context){
 
return new Swiper(
  
  //autoplay: true,
  //duration: 3000,
  itemBuilder: (BuildContext context, int index) {
     return new Image.asset(
                  imgList[index],
                  fit: BoxFit.fill,
                  );
 
  },
  
  itemCount: 3,
  viewportFraction: 1,
  scale: .9,
//  pagination: new SwiperPagination(
//               margin: new EdgeInsets.all(5.0),
//               builder: new DotSwiperPaginationBuilder(
//                   color: Colors.grey[400], activeColor: Colors.orange[700])),
  //control: new SwiperControl(),
);
}