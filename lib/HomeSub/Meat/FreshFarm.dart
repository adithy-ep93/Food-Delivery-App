import 'package:FoodDelivery/HomeSub/Meat/FreshFarmSub.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class FreshFarm extends StatefulWidget {
  @override
  _FreshFarmState createState() => _FreshFarmState();
}

class _FreshFarmState extends State<FreshFarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),

      body: SingleChildScrollView(child: 
      
      Column(children: [

        SizedBox(height: MediaQuery.of(context).size.height*.02,),

        Row(children: [
          Container(
            
            height: MediaQuery.of(context).size.height*.18,
            width: MediaQuery.of(context).size.width*.999,
            child: Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*.03),

              Image.asset('assets/Home/Meat/m11.jpg'),

              SingleChildScrollView(
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                  Text('Fresh From Farm',
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                  
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('Attingal'),

                  SizedBox(height: MediaQuery.of(context).size.height*.03),

                  Text('13 Kms   1 Hour Deliver'),


                ],),
              )
            ],),
          ),
          
        ],),

         Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
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

        SizedBox(height: MediaQuery.of(context).size.height*.02),

        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width*.02),
            Icon(Icons.local_offer_outlined),
            SizedBox(width: MediaQuery.of(context).size.width*.02),
            RichText(text: TextSpan(text: 'Get 15% off up to RS 75 | Use MT15',style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold
            )),),
          ],
        ),

        Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: TextField(
            
              
              decoration: InputDecoration(
                
              enabledBorder: OutlineInputBorder(
              
                  borderSide: BorderSide(color: Colors.grey[400])
              ),

              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
              ),
              suffixIcon: Icon(Icons.search),

              hintText: 'Search In Fresh From Farm..',
              filled: true,
              fillColor: Colors.white,
              
              
             // icon: Icon(Icons.search),
             ),
          ),
        ),

        Row(children: [

          SizedBox(width: MediaQuery.of(context).size.width*.04),
          Text('Categories',
          
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),

          )
        ],),

         SizedBox(height: MediaQuery.of(context).size.height*.01),

         Row(children: [

          SizedBox(width: MediaQuery.of(context).size.width*.04),
          Text('Browse Products By Categories',
          
          style: TextStyle(
            
            fontSize: 16
          ),

          )
        ],),

        SizedBox(height: MediaQuery.of(context).size.height*.03,),   


        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width*.04),
            Container(
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.2,
              child: Row(
                
                children: [
                GestureDetector(
                  
                  onTap: (){
                    Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>FreshFarmSub()));
                  },

                  child: Image.asset('assets/Home/Meat/m7.jpg')),
                 SizedBox(width: MediaQuery.of(context).size.width*.04),
                
                
              ],),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.03,),   

        Container(
          //height: MediaQuery.of(context).size.height*.3,
          color: Colors.grey[100],
          child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(color: Colors.black,)),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),      

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*.08,),   
                RichText(text: TextSpan(text: 'Fresh From Farm',style: 
                TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
                ),),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*.01,),   

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*.05,),   

                Icon(Icons.location_pin),

                RichText(text: TextSpan(text: 'Fresh From Farm Attingal Trivandrum',style: 
                TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  
                )
                ),),
              ],

            ),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),   

          ],),
        )

        

      ],)
      
      ,),
      
    );
  }
}