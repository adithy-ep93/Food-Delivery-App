import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(children: [
          Icon(FontAwesomeIcons.pizzaSlice,
          color:Color(0xff550d0e),),

          SizedBox(width: MediaQuery.of(context).size.width*.03,),

          Text('Book Stores',
          style: TextStyle(
            color: Colors.black
          ),)

        ],),
      ),

      body: SingleChildScrollView(child: 
      
      Column(children: [

       // SizedBox(height: MediaQuery.of(context).size.height*.03,),

        Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(20),
          child: TextField(
              
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
              ),

              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),
              suffixIcon: Icon(Icons.search),

              hintText: 'Search In Book Stores',
              filled: true,
              fillColor: Colors.white,
              
              
             // icon: Icon(Icons.search),
             ),
          ),
        ),

        Container(
          
          color: Colors.grey[200],
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.02),
              Row(children: [

                SizedBox(width: MediaQuery.of(context).size.width*.03),

                Text('Currently Unserviceable Stores',
                style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold),),

                


              ],),

               SizedBox(height: MediaQuery.of(context).size.height*.04),
        
        Container(

          
          
          height: MediaQuery.of(context).size.height*.17,
          width: MediaQuery.of(context).size.width*.999,
          child: Row(children: [

            SizedBox(width: MediaQuery.of(context).size.width*.03),

            Image.asset('assets/Home/Book/book.jpg'),

            SizedBox(width: MediaQuery.of(context).size.width*.03),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.04),
              Text('DC BOOKS',
              
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              
              ),

              SizedBox(height: MediaQuery.of(context).size.height*.03),

              Text('opp. Secretariat'),

             


            ],)
          ],),
        ),

        
        
       

        SizedBox(height: MediaQuery.of(context).size.height*.04),
        

            ],
          ),
        ),

        
        

      ],)
      
      ,),
      
    );
  }
}