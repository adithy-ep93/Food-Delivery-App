import 'package:FoodDelivery/HomeSub/Restaurants/AllStars.dart';
import 'package:FoodDelivery/HomeSub/Restaurants/DineOnBudget.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/AlSaj.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/BurgerKing.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/KFC.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/MRA.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/SubWay.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickupDropSub.dart';
import 'package:FoodDelivery/Account/My_Account/Offers/Offers.dart';


class RestaurantHome extends StatefulWidget {

  @override
  _RestaurantHomeState createState() => _RestaurantHomeState();
}

class _RestaurantHomeState extends State<RestaurantHome> {

  final List<Map> sort = [
    {'name': 'Relavance',  'select': false},
    {'name': 'Cost For Two',  'select': false},
    {'name': 'Delivery Time',  'select': false},
    {'name': 'Rating',  'select': false},
   
  ];

  final List<Map> cuisines = [
    {'name': 'Arabian','select': false},
    {'name': 'Biriyani',  'select': false},
    {'name': 'Cafe',  'select': false},
    {'name': 'Chinese',  'select': false},
    
  ];

  final List<Map> offers = [
    {'name': 'Offers',  'select': false},
    {'name': 'Pure Veg', 'select': false},
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Color(0xffDfd7cc),
        iconTheme: IconThemeData(color:Color(0xff550d0e)),
        title: GestureDetector(
          onTap: (){
             Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          PickupDropSub()));
          },
                  child: Row(
            children: [
              Text('Home',
              style: TextStyle(
                color: Color(0xff550d0e)
              ),),
              Icon(Icons.arrow_drop_down_circle_outlined,color: Color(0xff550d0e),)

            ],
          ),
        ),
        actions: [
           GestureDetector(
             onTap: (){
               Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          Offers()));
             },
                        child: Row(
               children: [
                 Icon(Icons.local_offer_outlined),
                 SizedBox(width: MediaQuery.of(context).size.width*.02,),
                Center(
                  child: Text('Offers',
                  style: TextStyle(
                    color: Color(0xff550d0e)
                  ),),
                ),

                SizedBox(width: MediaQuery.of(context).size.width*.02,)
               ],
             ),
           ),
               
        ],
      ),

      body: SingleChildScrollView(
        
        
        child:Column(children: [

               SizedBox(
                        height: MediaQuery.of(context).size.height*.03,),
          

            Row(
                    
                    children:<Widget> [       

                      SizedBox(
                        height: MediaQuery.of(context).size.height*.33,
                        width: MediaQuery.of(context).size.width*0.98,
                                child: 
                                
                                
                                ListView(
                                                scrollDirection: Axis.horizontal,
                          
                          
                            children: <Widget>
                            [
                               
                        SingleChildScrollView(
                                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.69,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(onPressed: (){
                                           
                                           Navigator.push(context, 
                                           MaterialPageRoute(builder:
                                            (BuildContext context )=>DineOnBudget()));

                          }, child: Image.asset('assets/Home/RestaurantMain/r2.jpg'),
                            ),
                                 ],
                                    ),
                                  ),
                        ),

                        

                         SingleChildScrollView(
                                                    child: Container(
                                    width: MediaQuery.of(context).size.width*0.68,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(
                                          
                                          
                                          onPressed: (){
                                            Navigator.push(context, 
                                           MaterialPageRoute(builder:
                                            (BuildContext context )=>AllStars()));


                        }, child: Image.asset(
                            
                            'assets/Home/RestaurantMain/r3.jpg'),
                            ),

                                      ],
                                    ),
                                  ),
                         ),

                            ],
                        ),
                      ),              

                
                    ],
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height*.12,
                    child: Row(children: [
                      SizedBox(width: MediaQuery.of(context).size.width*.055,),
                      Image.asset('assets/Home/RestaurantMain/r4.jpg'),
                      Image.asset('assets/Home/RestaurantMain/r5.jpg'),
                      Image.asset('assets/Home/RestaurantMain/r6.jpg'),
                      Image.asset('assets/Home/RestaurantMain/r7.jpg'),
                    ],),
                  ),


                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width*.07,),
                    Text('All Restaurants'),
                    SizedBox(width: MediaQuery.of(context).size.width*.3,),
                    GestureDetector(
                      onTap: (){
                        showModalBottomSheet(context:context,builder:(BuildContext bc){
     return StatefulBuilder(builder: (context, setState) {
 
          return Scaffold(
            bottomNavigationBar: BottomAppBar(
              color: Colors.grey[100],
              elevation: 0,
            child:Container(
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.4,),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(25,10,25,10),
                    color: Color(0xff550d0e),
                    child: Text('Apply',
                    style: TextStyle(
                      color: Color(0xffDfd7cc),
                      fontWeight: FontWeight.bold
                    ),),
                  
                  onPressed: (){

                  },

                  ),
                ],
              ),
            )
            
            
             ,),
            appBar: AppBar(
              actions: [
                Center(
                  child: Text('Clear All',
                  style: TextStyle(
                  color: Color(0xff550d0e)
              ),
                  ),

                  
                ),
                 SizedBox(width: MediaQuery.of(context).size.width*.02),
                
              ],
              title: Text('Sort / Filter',style: TextStyle(
                color: Color(0xff550d0e)
              ),),

              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close,color:Color(0xff550d0e),),
              )
            ),


                  body: SingleChildScrollView(
                  child: Container(
                  height:MediaQuery.of(context).size.height*.8,
        color: Colors.red,
        child: VerticalTabs(
            disabledChangePageFromContentView: true,
            contentScrollAxis: Axis.vertical,
            indicatorColor: Colors.red,
            backgroundColor: Colors.white,
            tabsWidth: MediaQuery.of(context).size.width / 4,
            indicatorWidth: 5,
            selectedTabBackgroundColor: Colors.white,
            tabBackgroundColor: Colors.grey[200],
            tabs: <Tab>[
              
             
              Tab(
                  child: Container(
                      height: 40, child: Center(child: Text('Sort')))),
              Tab(
                  child: Container(
                      height: 40, child: Center(child: Text('Cuisines')))),
              Tab(
                  child:
                      Container(height: 40, child: Center(child: Text('Offers & more')))),
             
            ],
            contents: <Widget>[
             
              Container(
                child: ListView.builder(
                  
                    itemCount: sort.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: CheckboxListTile(
                          title: Text(
                            sort[index]['name'],
                            style: TextStyle(fontSize: 13),
                          ),
                          value: sort[index]['select'],
                          
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool value) {
                            setState(() {
                              sort[index]['select'] = value;
                            });
                          },
                        ),
                      );
                    }),
              ),
              Container(
                child: ListView.builder(
                    itemCount: cuisines.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: CheckboxListTile(
                          title: Text(
                            cuisines[index]['name'],
                            style: TextStyle(fontSize: 13),
                          ),
                          value: cuisines[index]['select'],
                          
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool value) {
                            setState(() {
                              cuisines[index]['select'] = value;
                            });
                          },
                        ),
                      );
                    }),
              ),
              Container(
                child: ListView.builder(
                    itemCount: offers.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: CheckboxListTile(
                          title: Text(
                            offers[index]['name'],
                            style: TextStyle(fontSize: 13),
                          ),
                          value: offers[index]['select'],
                          
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool value) {
                            setState(() {
                              offers[index]['select'] = value;
                            });
                          },
                        ),
                      );
                    }),
              ),
             
             
            ],
        ),
      ),
            ),
          );
     });
  });
                      },
                                          child: Container(
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.sortAmountDown),
                             SizedBox(width: MediaQuery.of(context).size.width*.01,),
                         Text('SORT / FILTER'),
                          ],
                        ),
                      ),
                    ),
                   
                  ],),

                  SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          SubWay()));
                                    },
                                      child: Container(
                                        
                         width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height /6 ,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/burger-king.jpg',
                                ),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('SubWay',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                   SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          KFC()));
                    },
                                      child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*0.999999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/kf1.jpg'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('KFC',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          AlSaj()));
                    },
                                      child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*0.9999999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/alsaj.jfif'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('AL SAJ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),
                                      
                                      SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),

                    SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          BurgerKing()));
                    },
                                      child: Container(
                        height: MediaQuery.of(context).size.height*.18,
                                    width: MediaQuery.of(context).size.width*.99999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/burger-king.jpg'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Burger King',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          MRA()));
                    },
                                      child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*.999999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/mra.jpg'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('MRA',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                  SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color:Color(0xff550d0e),),

                                        Text('   Use YUMMYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),


                    SizedBox(height: MediaQuery.of(context).size.height*.04,),


                    Container(
                      
                      color: Colors.grey[200],

                      child:
                    
                    Column(children: [
                      Center(
                        
                        child: 
                      
                      Text('Express Delivery',style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),)
                      
                      ,),

                      SizedBox(height: MediaQuery.of(context).size.height*.01,),

                      Center(child: 
                      
                      Text('All Restaurant With An Estimated')
                      
                      ,),

                      Center(child: 
                      
                      Text('Delivery Time Of Under 30 Minuts T&C Applies')
                      
                      ,),

                      SizedBox(height: MediaQuery.of(context).size.height*.03,),


                      Row(
                    
                          children:<Widget> [       

                          SizedBox(
                          height: MediaQuery.of(context).size.height*.35,
                          width: MediaQuery.of(context).size.width*0.98,
                                
                                child: 
                                
                                
                                      ListView(
                                                scrollDirection: Axis.horizontal,
                          
                          
                                      children: <Widget>
                                      [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          AlSaj()));
                                        },
                                                                              child: Container(
                                        width: MediaQuery.of(context).size.width*0.42,
                           //height: MediaQuery.of(context).size.height*0.6,
                                        child: SingleChildScrollView(
                                                                                  child: Column(
                                                 children: [
                                                  FlatButton(onPressed: (){
                                                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          AlSaj()));

                                                }, child: Image.asset('assets/Home/kf1.jpg'),
                                                 ),

                                                 SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                                 Text('AL SAJ',
                                                 style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                 ),),

                                                 SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                                 Text('South Indian',
                                                 style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                 ),),

                                                ],
                                          ),
                                        ),
                                    ),
                                      ),


                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          MRA()));
                          },
                                                  child: SingleChildScrollView(
                                                                                                      child: Container(
                                    width: MediaQuery.of(context).size.width*0.42,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(onPressed: (){
                                           Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          MRA()));

                          }, child: Image.asset('assets/Home/mra.jpg'),
                            ),


                                    SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                               Text('MRA',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),),

                                               SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                               Text('Continental , Chinese',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),),

                                 ],
                                    ),
                                  ),
                                                  ),
                        ),

                        

                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          KFC()));
                           },
                                                    child: SingleChildScrollView(
                                                                                                          child: Container(
                                    width: MediaQuery.of(context).size.width*0.42,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(
                                          
                                          
                                          onPressed: (){
                                           Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          KFC()));

                        }, child: Image.asset(
                            
                            'assets/Home/kf1.jpg'),
                            ),


                              SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                               Text('KFC',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),),

                                               SizedBox(height: MediaQuery.of(context).size.height*.02,),

                                               Text('Continental , Chinese',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),),

                                      ],
                                    ),
                                  ),
                                                    ),
                         ),
                                

                            ],
                        ),
                      ),              

                
                    ],
                  ),



                    ],)
                    
                    
                    ,),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          SubWay()));
                       },
                                            child: Container(
                        height: MediaQuery.of(context).size.height*.18,
                                    width: MediaQuery.of(context).size.width*0.99999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/burger-king.jpg'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('SubWay',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                    ),
                     ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          KFC()));
                    },
                                      child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*.99999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/kf1.jpg'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('KFC',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          AlSaj()));
                    },
                                      child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*0.999999,
                        child: Row(children: [

                          SizedBox(width: MediaQuery.of(context).size.width*.04,),
                                
                                Image.asset('assets/Home/alsaj.jfif'),

                                SingleChildScrollView(
                                                                  child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Row(
                                     
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('AL SAJ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),

                                     SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [
                                         SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                        Icon(Icons.star),

                                        Text('  4.0 .  36 mins . ₹ 250 for two'),

                                        
                                      ],
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    Row(
                                      children: [

                                         SizedBox(width: MediaQuery.of(context).size.width*.02,),

                                        Icon(Icons.local_offer_outlined,
                                        color: Color(0xff550d0e),),

                                        Text('   Use YUMMYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                      ),
                  ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    //Divider(color: Colors.black,),

                    Image.asset('assets/Home/Splash.jpg')

                    
        ],)
        
        
        
        ,),
      
    );
  }
}