import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
class SpmSub extends StatefulWidget {
  @override
  _SpmSubState createState() => _SpmSubState();
}

class _SpmSubState extends State<SpmSub> {

  bool isAdding =false;
  bool isAdding1 =false;
  bool isAdding2 =false;
  bool isAdding3 =false;
  bool isAdding4 =false;
  bool isAdding5 =false;
  bool isAdding6 =false;
  bool isAdding7 =false;
  bool isAdding8 =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          children: [
            Text('Chicken',
            style: TextStyle(
              color: Colors.black,
              
            ),),
            Text('SPM',
            style: TextStyle(
              color: Colors.black,
              fontSize:15
            ),)
          ],
        ),
        
      ),

      body: SingleChildScrollView(
              child: Column(
                children: [

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

              hintText: 'Search In SPM..',
              filled: true,
              fillColor: Colors.white,
              
              
             // icon: Icon(Icons.search),
             ),
          ),
        ),


                  Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            SizedBox(height: 20.0),
            
            DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'All'),
                          Tab(text: 'Whole/Assorted\n pieces'),
                          Tab(text: 'Leg &\nThigh'),
                          Tab(text: 'Wings'),
                           
                        ],
                      ),
                    ),


                    Container(
                      height: MediaQuery.of(context).size.height*.8, //height of TabBarView
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      child: TabBarView(children: <Widget>[
                        SingleChildScrollView(
                                                  child: Container(
                            child:Column(
                              children: [
                                Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Curry Cut(large)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 200'),
              ],
            )
               ],
             ),
             ),
            

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
                                           
                                           
                                          },

                                    child:  Image.asset('assets/Home/Meat/m13.jpg')
               
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


                       Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Curry Cut(Small)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 110'),
              ],
            )
               ],
             ),
             ),
            

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
                                           
                                           
                                          },

                                    child:  Image.asset('assets/Home/Meat/m14.jpg')
               
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
                    this.isAdding1= !this.isAdding1;
                  });
                                          
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


                       Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(large)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 130'),
              ],
            )
               ],
             ),
             ),
            

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
                                           
                                           
                                          },

                                    child:  Image.asset('assets/Home/Meat/m15.jpg')
               
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



                      Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(Small)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 120'),
              ],
            )
               ],
             ),
             ),
            

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
                                           
                                           
                                          },

                                    child:  Image.asset('assets/Home/Meat/m16.jpg')
               
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


                              ],
                            ),

                          ),
                        ),




                        Container(
                          child:Column(
                            children: [
                         

                       Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(large)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 130'),
              ],
            )
               ],
             ),
             ),
            

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
                                         
                                         
                                        },

                                  child:  Image.asset('assets/Home/Meat/m17.jpg')
               
              )),

              
              !isAdding4 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding4 = !this.isAdding4;
                  });
                                        
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
                                  
                                  this.isAdding4= !this.isAdding4;
                                  
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



                      Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(Small)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 120'),
              ],
            )
               ],
             ),
             ),
            

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
                                         
                                         
                                        },

                                  child:  Image.asset('assets/Home/Meat/m18.jpg')
               
              )),

              
              !isAdding5 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding5 = !this.isAdding5;
                  });
                                        
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
                                  
                                  this.isAdding5= !this.isAdding5;
                                  
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


                            ],
                          ),
                        ),




                        Container(
                          child:Column(
                            children: [
                             
                       Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(large)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 130'),
              ],
            )
               ],
             ),
             ),
            

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
                                         
                                         
                                        },

                                  child:  Image.asset('assets/Home/Meat/m19.jpg')
               
              )),

              
              !isAdding6 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding6 = !this.isAdding6;
                  });
                                        
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
                                  
                                  this.isAdding6= !this.isAdding6;
                                  
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



                      Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(Small)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 120'),
              ],
            )
               ],
             ),
             ),
            

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
                                         
                                         
                                        },

                                  child:  Image.asset('assets/Home/Meat/m20.jpg')
               
              )),

              
              !isAdding7 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding7 = !this.isAdding7;
                  });
                                        
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
                                  
                                  this.isAdding7= !this.isAdding7;
                                  
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


                            ],
                          ),
                        ),
                        Container(
                          child:Column(
                            children: [
                        

                      Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,),
        Column(
          children: [
            
             Container(
               width: MediaQuery.of(context).size.width*.25,
               child: Column(
               children: [
                 Text('Chicken Fry Cut(Small)'),
                 SizedBox(height: MediaQuery.of(context).size.height*.01,),
                 Row(children: [
                   Text('1KG',style: TextStyle(color: Colors.grey),)
                 ],),
            Row(
              children: [
                Text('₹ 120'),
              ],
            )
               ],
             ),
             ),
            

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
                                         
                                         
                                        },

                                  child:  Image.asset('assets/Home/Meat/m21.jpg')
               
              )),

              
              !isAdding8 ? FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.grey[300],
            width: 1,
            style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(5),),
                onPressed: (){
                  setState(() {
                    this.isAdding8 = !this.isAdding8;
                  });
                                        
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
                                  
                                  this.isAdding8= !this.isAdding8;
                                  
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


                            ],
                          ),
                        ),
                        
                        
                      ])
                    )
                  ])
            ),
          ]),
        ),
                ],
              ),
      ),
      
    );
  }
}