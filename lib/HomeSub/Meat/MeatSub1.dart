import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class MeatSub1 extends StatefulWidget {
  @override
  _MeatSub1State createState() => _MeatSub1State();
}

final List imgListOffer = [
'assets/Home/Meat/m13.jpg',
'assets/Home/Meat/m14.jpg',

];

class _MeatSub1State extends State<MeatSub1> {
  bool isAdding =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Chicken Cut',
        style: TextStyle(color: 
        Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
      
      
      
      ),
      body: SingleChildScrollView(
        child:
         Column(children: [

            Container(
        
 
        constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height*.4
        ),
        child: imageSliderOffer(context)
        ),

        

        Container(
          color: Colors.white,
          child:Row(children: [
                SizedBox(width:MediaQuery.of(context).size.width*.05 ,),
            Column(children: [
                 SizedBox(height:MediaQuery.of(context).size.height*.1 ,),
              Text('Chicken Cut',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 16),
              ),
                  SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
              Text('1 kg'),
                    SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
              Text('Rs 200'),

                 SizedBox(height:MediaQuery.of(context).size.height*.1 ,),

            ],),

            SizedBox(width:MediaQuery.of(context).size.width*.4 ,),

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

          ],)
          
           ,)

      ],),),
      
    );
  }
}

Swiper imageSliderOffer(context){
 
return new Swiper(
  
  //autoplay: true,
 // duration: 3000,
  itemBuilder: (BuildContext context, int index) {
     return new Image.asset(
                  imgListOffer[index],
                  fit: BoxFit.fill,
                  );
 
  },
  
  itemCount: 2,
  viewportFraction: 1,
  scale: .9,
 pagination: new SwiperPagination(
              margin: new EdgeInsets.all(5.0),
              builder: new DotSwiperPaginationBuilder(
                  color: Colors.grey[400], activeColor: Colors.black)),
  //control: new SwiperControl(),
);
 
}