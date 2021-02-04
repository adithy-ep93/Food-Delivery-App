

import 'package:flutter/material.dart';


class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


       appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,),
         title: Text('Favourites',
         style: TextStyle(
                    color: Colors.black
                  ),),
         backgroundColor: Color(0xffDfd7cc),),
               


        body: SingleChildScrollView(
                  child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            
                child: Column(children: [
                  Image(image: AssetImage('assets/Food/f2.jpg',
                  ),
                  height: MediaQuery.of(context).size.height*.55,
                  width: MediaQuery.of(context).size.height*.99,),


                  Center(child: Text('WHERE IS THE LOVE ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                  ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Center(child: Text('Once you favourite a restaurant , it will appear here',
                  style: TextStyle(
                   color: Colors.grey
                  ),),)
                ],),
            ),
        )

      
      
    );
      
    
  }
}