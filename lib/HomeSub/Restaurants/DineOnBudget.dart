import 'package:FoodDelivery/HomeSub/TopPicks/AlSaj.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/BurgerKing.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/KFC.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/MRA.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/SubWay.dart';
import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'package:dotted_line/dotted_line.dart';



class DineOnBudget extends StatefulWidget {
  @override
  _DineOnBudgetState createState() => _DineOnBudgetState();
}

class _DineOnBudgetState extends State<DineOnBudget> {

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
       
       backgroundColor: Colors.transparent,

      

        
      ),


    body: SingleChildScrollView(child: 
    
    Column(children: [

      Container(
         height: MediaQuery.of(context).size.height*.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage('assets/Home/h5.jpg') ,
              fit: BoxFit.fill
              ),
              
          ),

        ),

        Container(
          padding: EdgeInsets.fromLTRB(15, 20, 5, 10),
          child: Column(children: [
            Row(children: [
              Text('BUDGET FRIENDLY OPTIONS',
              style: TextStyle(fontWeight: FontWeight.bold  ,
              fontSize: 20
              ),)
            ],),

             SizedBox(height: MediaQuery.of(context).size.height*.02), 

            RichText(text:TextSpan(
              text: 'Budgeted Finds ! Eat your hearts content & dont worry about the money.',
              style: TextStyle(color: Colors.grey)
            ),),

              Container(
          padding: EdgeInsets.fromLTRB(5, 20, 20, 10),
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 2.0,
            dashColor: Colors.black,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
                    ),
        ),

          ],),
        ),

      Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
            child: Row(children: [
              Text('5 RESTAURANTS NEARBY'),
            ],),
          ),

         SizedBox(width: MediaQuery.of(context).size.width*.2), 
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
                      color: Colors.white,
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
                color: Colors.black
              ),),

              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close,color: Colors.black,),
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
          padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
          child: Row(children: [
            Icon(Icons.sort),
            Text('  Sort / Filter')
          ],),
        ),
      ),


        ],
      ),

      GestureDetector(

                      onTap: (){
                        Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>SubWay()));
                      },
                                          child: Container(
                        height: MediaQuery.of(context).size.height*.18,
                                    width: MediaQuery.of(context).size.width*0.999,
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


                    SizedBox(height: MediaQuery.of(context).size.height*.02,),


                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>MRA()));
                       },
                                            child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*0.9999,
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

                                   SizedBox(height: MediaQuery.of(context).size.height*.01),

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
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>KFC()));
                       },
                                            child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*0.9999,
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
                     SizedBox(height: MediaQuery.of(context).size.height*.02,),

                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>AlSaj()));
                       },
                                            child: Container(
                        height: MediaQuery.of(context).size.height*.17,
                                    width: MediaQuery.of(context).size.width*0.9999,
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
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>BurgerKing()));
                       },
                                            child: Container(
                        height: MediaQuery.of(context).size.height*.18,
                                    width: MediaQuery.of(context).size.width*0.9999,
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

                                        Text('   Use YUMMYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                    ),
                     ),


                    Image.asset('assets/Home/Splash.jpg')


    ],),

    
    
    ),

    );
  }
}