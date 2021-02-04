import 'package:FoodDelivery/HomeSub/TopPicks/AlSaj.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/KFC.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/MRA.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/SubWay.dart';
import 'package:flutter/material.dart';
//import 'package:FoodDelivery/Model/Restaurants_model.dart';


class Restaurants_New extends StatelessWidget {
  final title = [
    'Rated 4 +',
    'Less than 30 mins',
    'Less than Rs 300',
    'Rs 300 - Rs 600',
    'Above Rs 650'
  ];


  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[50],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Divider(
                  color: Colors.black,
                )),
            Container(
              height: 70.0,
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {},
                        child: Text(
                          title[index],
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),

                        //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            Divider(
              thickness: 15,
              color: Colors.grey[200],
            ),

            Container(
              padding: EdgeInsets.fromLTRB(1, 20, 0, 0),
              child: Column(
                children: [

                  SizedBox(height: MediaQuery.of(context).size.height*.03,),


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
                                
                                Image.asset('assets/Home/burger-king.jpg',
                                fit: BoxFit.fill,
                                
                                ),

                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Row(
                                   
                                    children: [
                                       SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                      Text('MRA',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),),
                                    ],
                                  ),

                                   SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                  Row(
                                    children: [
                                       SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                      Text('Indian ,Arabian , Chinese',style: TextStyle(
                                        
                                        fontSize: 13
                                      ),),
                                    ],
                                  ),

                                   SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                  Row(
                                    children: [
                                       SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                      Icon(Icons.star ,size: 14,),

                                      Text('  4.0 .  36 mins . ₹ 250 for two',
                                      style: TextStyle(
                                        
                                        fontSize: 13
                                      ),),

                                      
                                    ],
                                  ),
                                  

                                

                                  
                                ],),

                           
                            ],),
                      ),
                    ),


                    SizedBox(height: MediaQuery.of(context).size.height*.01,),


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

                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Row(
                                   
                                    children: [
                                       SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                      Text('SubWay',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),),
                                    ],
                                  ),

                                   SizedBox(height: MediaQuery.of(context).size.height*.02,),
                                  Row(
                                    children: [
                                       SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                      Text('Indian ,Arabian , Chinese',style: TextStyle(
                                        
                                        fontSize: 13
                                      ),),
                                    ],
                                  ),

                                   SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                  Row(
                                    children: [
                                       SizedBox(width: MediaQuery.of(context).size.width*.018,),

                                      Icon(Icons.star ,size: 14,),

                                      Text('  4.0 .  36 mins . ₹ 250 for two',
                                      style: TextStyle(
                                        
                                        fontSize: 13
                                      ),),

                                      
                                    ],
                                  ),
                                  

                                

                                  
                                ],),

                           
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
                                        color: Colors.orange[700],),

                                        Text('   Use YUMMYYIT'),

                                        
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
                                        color: Colors.orange[700],),

                                        Text('   Use YUMMYYIT'),

                                        
                                      ],
                                    )
                                  ],),
                                ),

                           
                            ],),
                    ),
                     ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                ],
              ),
            ),
            

          ],
        ),
      ),
    );
  }
}
