import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:FoodDelivery/HomeSub/coupons/BuyTwoFree.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:expandable_text/expandable_text.dart';



class BurgerKing extends StatefulWidget {
  @override
  _BurgerKingState createState() => _BurgerKingState();
}

class _BurgerKingState extends State<BurgerKing> {

  bool isSearching = false;
  bool onClicking = false;
  bool state = false;
  bool isAdding =false;
  bool isAdding1 =false;
  bool isAdding2 =false;
  bool isAdding3 =false;
  bool isTouching = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      floatingActionButton: Column(
        
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          Row(
            children: [
               SizedBox(width: MediaQuery.of(context).size.width*.3,),
              Center(
                
                child: FloatingActionButton.extended(
                  label: Text('BROWSE MENU',
                  style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.bold
                  ),
                  
                  ),

                  icon: Icon(FontAwesomeIcons.utensils),
                  
                  backgroundColor: Colors.blue[300]
                  ,
  onPressed: (){
        createAlertDialog(context);
  },
),
              ),
            ],
          ),
        ],
      ),


      backgroundColor: Colors.white,

      appBar: !isSearching ? AppBar(
        title: Text('Burger King',
        style: TextStyle(color: Colors.black),),
          
  
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: 
        Colors.black
        ),actions: [

          IconButton(
            onPressed: (){

              setState(() {
                this.onClicking = !this.onClicking;
              });

            },

            icon: !onClicking ? Icon(Icons.favorite_outline) : Icon(Icons.favorite,
            color: Colors.red,),

          ),
          IconButton(
            
            onPressed: (){

              setState(() {
               this.isSearching =!this.isSearching;
              });

            },

            icon: !isSearching ? Icon(Icons.search): Icon(Icons.highlight_remove_outlined),)
        ],
        
      ):AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*.15,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.1,),
            TextField(

              autofocus: true,
          
          decoration: InputDecoration(
            
            hintText:'Enter Dish Name...',
            hintStyle: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.bold)
            
             ),
             ),
          ],
        ),
        leading: IconButton(onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder:(BuildContext context)=>BurgerKing()));
        },
        icon: Icon(Icons.arrow_back_sharp,color: Colors.black,),
        
        ),
      ),

      body:SingleChildScrollView(child: 
      
      Column(children: [
        SizedBox(height: MediaQuery.of(context).size.height*.03,),
        Row(
          children: [
               SizedBox(width: MediaQuery.of(context).size.width*.03,),
            Text('Burger King',
            
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 18
            ),

            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.01,),
        Row(
          children: [
               SizedBox(width: MediaQuery.of(context).size.width*.03,),
            Text('Continental Food',
            
            style: TextStyle(
              color: Colors.grey
            ),

            ),
          ],
        ),

        Row(
          children: [
               SizedBox(width: MediaQuery.of(context).size.width*.03,),
            Text('Attingal 4.3 km',
            
            style: TextStyle(
              color: Colors.grey
            ),

            ),
          ],
        ),

        Container(
          padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
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

        SizedBox(height: MediaQuery.of(context).size.height*.02,),

        Row(
          children: [
            GestureDetector(
              onTap: (){


                return showDialog(context: context,builder:(context){
                return AlertDialog(
          
                 content: SingleChildScrollView(
                      child: Container(
              width: MediaQuery.of(context).size.width*.9,
               
              child: Column(
                children: [
                  Row(children: [
                    Icon(FontAwesomeIcons.solidStar,color: Colors.yellow[800]),
                    SizedBox(width: MediaQuery.of(context).size.width*.02,),
                    Text('4.2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),),
                    SizedBox(width: MediaQuery.of(context).size.width*.2,),
                    Column(children: [
                      Text('Average from',
                      style: TextStyle(
             
              fontSize: 12
            ),),
                      Text('100+ rating',
                      style: TextStyle(
             
              fontSize: 12
            ),),
                    ],)
                  ],),

                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  Row(
                    children: [
                        SizedBox(width: MediaQuery.of(context).size.width*.02,),
                       Column(
                         children: [
                           IconButton(
            onPressed: (){

              setState(() {
                this.isTouching = !this.isTouching;
              });

            },

            icon: !isTouching ? Icon(FontAwesomeIcons.solidSmileBeam,color: Colors.yellow[800],size:35) :
            Icon(FontAwesomeIcons.solidGrinHearts,color: Colors.yellow[800],size:35)

          ),

           SizedBox(height: MediaQuery.of(context).size.height*.02,),

          Text(' Taste',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12
            ),),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),

          Row(children: [
            Text('85%',style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 12
            ),),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Icon(FontAwesomeIcons.solidThumbsUp,size: 12,)
          ],)

                         ],
                       ),

           SizedBox(width: MediaQuery.of(context).size.width*.08,),

            Column(
              children: [
                IconButton(
                onPressed: (){

                  setState(() {
                    this.isTouching = !this.isTouching;
                  });

                },

                icon:Icon(FontAwesomeIcons.shoppingBag,color: Colors.yellow[800],size:35) 
          ),

           SizedBox(height: MediaQuery.of(context).size.height*.02,),
           Text('Packaging',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12
            ),),

             SizedBox(height: MediaQuery.of(context).size.height*.01,),

          Row(children: [
            Text('97%',style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 12
            ),),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Icon(FontAwesomeIcons.solidThumbsUp,size: 12,)
          ],)

              ],
            ),  

           SizedBox(width: MediaQuery.of(context).size.width*.08,),

           Column(
             children: [
               IconButton(
                onPressed: (){

                  setState(() {
                    this.isTouching = !this.isTouching;
                  });

                },

                icon:Icon(FontAwesomeIcons.drumstickBite,color: Colors.yellow[800],size:35) 
          ),

           SizedBox(height: MediaQuery.of(context).size.height*.02,),

           Text('Portion',
           style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12
            ),),

             SizedBox(height: MediaQuery.of(context).size.height*.01,),

          Row(children: [
            Text('86%',style: TextStyle(
              fontWeight: FontWeight.bold,
               fontSize: 12
            ),),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Icon(FontAwesomeIcons.solidThumbsUp,size: 12,)
          ],)

             ],
           ),    

                 ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  Container(
                    padding: EdgeInsets.fromLTRB(5, 15, 0, 15),
                    color: Colors.grey[100],
                    
                    child: Row(children: [
                      Text('Did you find this useful ?',style: TextStyle(
                        fontSize: 14
                      ),),

                      SizedBox(width: MediaQuery.of(context).size.width*.08,),
                       Icon(FontAwesomeIcons.solidThumbsUp,size: 16,color: Colors.grey,),
                        Text(' | '),
                        Icon(FontAwesomeIcons.solidThumbsDown,size: 16,color: Colors.grey,)
                      
                  ],),)


                ],
              ),
            ),
          ),
        );
    });
              },
                          child: Column(
                        children:[
                          
                          Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.13,),
                  Icon(Icons.star,
                  size: 18,),
                  Text('4.1'),
                  Icon(Icons.arrow_forward_ios,
                  size: 12,)

                ],),
                

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.09,),
                 
                  
                  Text('500+ Rating'),
                
                ],),
                
                
                ] 
              ),
            ),

            Column(
                      children:[
                        
                        Row(children: [
                        SizedBox(width: MediaQuery.of(context).size.width*.09,),
              
                
                        Text('37 mins'),
              

                        ],),
              

              Row(children: [
                SizedBox(width: MediaQuery.of(context).size.width*.09,),
               
                
                Text('Delivery Time'),
              
              ],),
              
              
              ] 
            ),

            Column(
                      children:[
                        
                        Row(children: [
                        SizedBox(width: MediaQuery.of(context).size.width*.09,),
                
                        Text('₹ 300'),
                

                           ],),
              

              Row(children: [
                SizedBox(width: MediaQuery.of(context).size.width*.09,),
               
                
                Text('Cost for 2'),
              
              ],),
              
              
              ] 
            ),
          ],
        ),

        SizedBox(height: MediaQuery.of(context).size.height*.02,),

        Container(
          padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
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


         Row(
      
                    
                    children:<Widget> [       
                       SizedBox(width: MediaQuery.of(context).size.width*.02,),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*.13,
                        width: MediaQuery.of(context).size.width*0.98,
                                              child: ListView(
                                                scrollDirection: Axis.horizontal,
                          
                          
                            children: <Widget>
                            [
                                

                        SingleChildScrollView(
                                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.6,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(onPressed: (){
                                           _offersBottomSheet(context); 

                          }, child: Image.asset('assets/Home/BurgerKing/bk2.jpg'),
                            ),

                          
                                      ],
                                    ),
                                  ),
                        ),

                        

                         SingleChildScrollView(
                                                    child: Container(
                                    width: MediaQuery.of(context).size.width*0.6,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(
                                          
                                          
                                          onPressed: (){
                                           _offersBottomSheet(context); 

                        }, child: Image.asset(
                            
                            'assets/Home/BurgerKing/bk3.jpg'),
                            ),
                           
                                      ],
                                    ),
                                  ),
                         ),

                      SingleChildScrollView(
                                              child: Container(
                                    width: MediaQuery.of(context).size.width*0.6,
                             //height: MediaQuery.of(context).size.height*0.6,
                                    child: Column(
                                      children: [
                                        FlatButton(onPressed: (){
                                           _offersBottomSheet(context); 

                          }, 
                          child: Image.asset('assets/Home/BurgerKing/bk4.jpg'),
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

                  

                        Divider(color: Colors.grey[200],
                        
                        thickness: 10,
                        
                        ),

                        Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width*.02,),
                            Switch(
                       value: state,
                       onChanged: (bool s){
                             setState(() {
                               //state =s;
                               this.state = !this.state;
                             });
                       },
                       activeColor: Colors.green,
                       
                      
                     ),

                     Text('VEG ONLY')
                          ],
                        ),

                        Divider(color: Colors.grey,),

                         GestureDetector(
                           onTap: (){
                              Navigator.push(context, 
                          MaterialPageRoute(builder:(BuildContext context)=>
                          BuyTwoFree()));
                           },
                                                    child: Container(
                             padding: EdgeInsets.all(10),
                             child: Image.asset("assets/Home/BurgerKing/bk1.jpg")),
                         ),

    SizedBox(height: MediaQuery.of(context).size.height*.04,),

    Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Text('Recommended',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 18
        ),),
      ],
    ),

    SizedBox(height: MediaQuery.of(context).size.height*.04,),

    Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
            !state ?Text('chicken Roast'): Text('Vegitab Korma'),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),
            !state ?Text('₹ 160'): Text('₹ 50'),

          ],
        ),
          SizedBox(width: MediaQuery.of(context).size.width*.3,),
        Column(
          children: [
            Container(
              
              height: MediaQuery.of(context).size.height*.12,
              width: MediaQuery.of(context).size.width*.3,
              
              child:GestureDetector(

                                    onTap: (){
                                      !state? _ImageBottomSheet(context): _ImageBottomSheet4(context);
                                     
                                    },

                              child: !state ? Image.asset('assets/Home/BurgerKing/bk6.jpg'):
                Image.asset('assets/Home/BurgerKing/bk7.jpg'),
              )),

              
              !isAdding ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding = !this.isAdding;
                  });
                  _ItemBottomSheet(context);                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
              :Container(
              
                
                        width: MediaQuery.of(context).size.width*.3,
                         height: MediaQuery.of(context).size.height*.05,

                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(color: Colors.grey, spreadRadius: .5),
                          ],
                          ),
                          child: NumberInputPrefabbed.roundedButtons(
                          initialValue: 1,
                          
                          incIconColor: Colors.green,
                          onDecrement: (dec){
                            setState(() {
                              
                              this.isAdding= !this.isAdding;
                              
                            });
                          },
                          controller: TextEditingController(),
                          incDecBgColor: Colors.white,
                          buttonArrangement: ButtonArrangement.incRightDecLeft,
                          
),
   ),
          ],
        ),

        
      ],
    ),

     Divider(color: Colors.grey,),

       Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
            !state ?Text('Chilly chicken'): Text('Paneer Masala'),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),
            !state ?Text('₹ 140'): Text('₹ 80'),

          ],
        ),
          SizedBox(width: MediaQuery.of(context).size.width*.3,),
        Column(
          children: [
            Container(
              
              height: MediaQuery.of(context).size.height*.12,
              width: MediaQuery.of(context).size.width*.3,
              
             child:GestureDetector(

                                    onTap: (){
                                      !state? _ImageBottomSheet1(context): _ImageBottomSheet5(context);
                                     
                                    },

                              child: !state ? Image.asset('assets/Home/BurgerKing/bk8.jpg'):
                Image.asset('assets/Home/BurgerKing/bk11.jpg'),
              )),

              
             !isAdding1 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding1 = !this.isAdding1;
                  });
                  _ItemBottomSheet(context);                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
              :Container(
              
                
                        width: MediaQuery.of(context).size.width*.3,
                         height: MediaQuery.of(context).size.height*.05,

                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(color: Colors.grey, spreadRadius: .5),
                          ],
                          ),
                          child: NumberInputPrefabbed.roundedButtons(
                          initialValue: 1,
                          
                          incIconColor: Colors.green,
                          onDecrement: (dec){
                            setState(() {
                              
                              this.isAdding1= !this.isAdding1;
                              
                            });
                          },
                          controller: TextEditingController(),
                          incDecBgColor: Colors.white,
                          buttonArrangement: ButtonArrangement.incRightDecLeft,
                          
),
   ),
          ],
        ),

        
      ],
    ),

     Divider(color: Colors.grey,),

      Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
            !state ?Text('chick FriedRice'): Text('Mashroom mas'),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),
            !state ?Text('₹ 160'): Text('₹ 100'),

          ],
        ),
          SizedBox(width: MediaQuery.of(context).size.width*.3,),
        Column(
          children: [
            Container(
              
              height: MediaQuery.of(context).size.height*.12,
              width: MediaQuery.of(context).size.width*.3,
             child:GestureDetector(

                                    onTap: (){
                                      !state? _ImageBottomSheet2(context): _ImageBottomSheet6(context);
                                     
                                    },

                              child: !state ? Image.asset('assets/Home/BurgerKing/bk9.jpg'):
                Image.asset('assets/Home/BurgerKing/bk12.jpg'),
              )),
              
            !isAdding2 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding2 = !this.isAdding2;
                  });
                  _ItemBottomSheet(context);                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
              :Container(
              
                
                        width: MediaQuery.of(context).size.width*.3,
                         height: MediaQuery.of(context).size.height*.05,

                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(color: Colors.grey, spreadRadius: .5),
                          ],
                          ),
                          child: NumberInputPrefabbed.roundedButtons(
                          initialValue: 1,
                          
                          incIconColor: Colors.green,
                          onDecrement: (dec){
                            setState(() {
                              
                              this.isAdding2= !this.isAdding2;
                              
                            });
                          },
                          controller: TextEditingController(),
                          incDecBgColor: Colors.white,
                          buttonArrangement: ButtonArrangement.incRightDecLeft,
                          
),
   ),
          ],
        ),

        
      ],
    ),

     Divider(color: Colors.grey,),

      Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
            !state ?Text('chicken Mandi'): Text('Vegitab Korma'),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),
            !state ?Text('₹ 200'): Text('₹ 50'),

          ],
        ),
          SizedBox(width: MediaQuery.of(context).size.width*.3,),
        Column(
          children: [
            Container(
              
              height: MediaQuery.of(context).size.height*.12,
              width: MediaQuery.of(context).size.width*.3,
              
              child:GestureDetector(

                                    onTap: (){
                                      !state? _ImageBottomSheet3(context): _ImageBottomSheet4(context);
                                     
                                    },

                              child: !state ? Image.asset('assets/Home/BurgerKing/bk10.jpg'):
                Image.asset('assets/Home/BurgerKing/bk7.jpg'),
              )),
              !isAdding3 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding3 = !this.isAdding3;
                  });
                  _ItemBottomSheet(context);                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
              :Container(
              
                
                        width: MediaQuery.of(context).size.width*.3,
                         height: MediaQuery.of(context).size.height*.05,

                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(color: Colors.grey, spreadRadius: .5),
                          ],
                          ),
                          child: NumberInputPrefabbed.roundedButtons(
                          initialValue: 1,
                          
                          incIconColor: Colors.green,
                          onDecrement: (dec){
                            setState(() {
                              
                              this.isAdding3= !this.isAdding3;
                              
                            });
                          },
                          controller: TextEditingController(),
                          incDecBgColor: Colors.white,
                          buttonArrangement: ButtonArrangement.incRightDecLeft,
                          
),
   ),
          ],
        ),

        
      ],
    ),

   
SizedBox(height: MediaQuery.of(context).size.height*.1,),



      ],)
      
      ,)
      
    );
  }
}

void _ItemBottomSheet(context){
  
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.tealAccent[400],
              height: MediaQuery.of(context).size.height *.1,
            child: Row(
              children: [

                SizedBox(width: MediaQuery.of(context).size.width*.08,),

                Text('1',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

                
                ),),

                Text('Item | ',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

                
                ),),

                
                Text('₹ 160',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

                
                ),),

                 SizedBox(width: MediaQuery.of(context).size.width*.3,),
                 


                Text('View Cart',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

                
                ),),

                 SizedBox(width: MediaQuery.of(context).size.width*.02,),

                Icon(Icons.shopping_bag_outlined,color: Colors.white,)
              ],
            )
            
            ),
          );
  });
}


void _offersBottomSheet(context){
  
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 SizedBox(height: MediaQuery.of(context).size.height*.04,),

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.05,),


                    Text('TOP OFFER',style: TextStyle(
                      color: Color(0xff550d0e),
                      
                    ),),

                  ]
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*.04,),
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      height: MediaQuery.of(context).size.height*.05,
                      child: Row(
                        
                        children: [
                        Image.asset('assets/Home/BurgerKing/bk13.jpg')
                      ],),
                    ),

                    SizedBox(width: MediaQuery.of(context).size.width*.38,),

                    Text('copy',
                    style: TextStyle(
                      color: Color(0xff550d0e),
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                 Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*.05,),
                   
                    Text('Buy 2, Get 1 Free',
                    style: TextStyle(
                      
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),)
                  ],
                ),
                   SizedBox(height: MediaQuery.of(context).size.height*.02,),
                Divider(color: Colors.grey,
                thickness: 1,
                ),
                   SizedBox(height: MediaQuery.of(context).size.height*.02,),
               
                 

                 Container(
                  width: MediaQuery.of(context).size.width*.9,
                   child: ExpandableText(
                     'use code FREEDISH  & get the Lowest Priced item free when you add 3 or more "Buy 2 Get 1" items to your cart, use code FREEDISH  & get the Lowest Priced item free when you add 3 or more "Buy 2 Get 1" items to your cart',
                     
                     expandText: '\n\n+ More',

                   ),
                 ),

                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}

void _ImageBottomSheet(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk6.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('Chicken Rost'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('160'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}


void _ImageBottomSheet1(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk8.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('Chilly chicken'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('140'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}

void _ImageBottomSheet2(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk9.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('chick FriedRice'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('160'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}

void _ImageBottomSheet3(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk10.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('Chicken Mandi'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('200'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}

void _ImageBottomSheet4(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk7.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('Vegitable Korma'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('50'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}


void _ImageBottomSheet5(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk11.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('Paneer Masala'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('80'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}


void _ImageBottomSheet6(context){
   
   
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
                      color: Colors.white,
             // height: MediaQuery.of(context).size.height *.3,
            child: Column(
              children: [
                 

               Container(
                 height: MediaQuery.of(context).size.height*.42,
                 
                 child: Image.asset('assets/Home/BurgerKing/bk12.jpg')),

                
              

                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.04,),

                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                 
                      child: Icon(Icons.circle,color: Colors.green,
                      size: 15,)),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                      Icon(Icons.star,color: Colors.yellow[800],size: 16,),

                      SizedBox(width: MediaQuery.of(context).size.width*.02,),

                    Text('BestSeller',
                    style: TextStyle(
                      color: Colors.yellow[800],fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),

                  Text('Mashroom Mas'),

                   SizedBox(width: MediaQuery.of(context).size.width*.42,),

                  FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                                  
              },
              child: Text('ADD',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              ),
              )
              
             

                ],),
           

                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Text('100'),

                ],),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),


                

              ],
            )
            
            ),
          );
  });
}



// Alert Box while clicking Browsemenu(floating button)
createAlertDialog(BuildContext context){
    return showDialog(context: context,builder:(context){
        return AlertDialog(
          
          content: SingleChildScrollView(
                      child: Container(
              //height: MediaQuery.of(context).size.height*.45,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Recommended')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('7')),
                      


                    ],
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Bread')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('7')),
                    ],
                  ),
                     SizedBox(height: MediaQuery.of(context).size.height*.02,),
                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Chicken')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('14')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Egg')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('2')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Mutton')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('1')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Beef')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('10')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Vegitables')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('11')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Indian Rice')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('1')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Tandoori')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('5')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Mandhi')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('2')),
                    ],
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   Row(
                    children: [
                      Container(
                        width:  MediaQuery.of(context).size.width*.4,
                        child: Text('Biryani')),
                       SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Container(child: Text('5')),
                    ],
                  ),

                  

                ],
              ),
            ),
          ),
        );
    });
  }


