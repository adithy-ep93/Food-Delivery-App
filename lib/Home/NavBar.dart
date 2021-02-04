import 'package:FoodDelivery/Home/searchtab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:FoodDelivery/Home/Cart.dart';
import 'package:FoodDelivery/Signup/Signup2.dart';
import 'package:FoodDelivery/Home/HomeMain.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _currentIndex = 0;

  final tabs = [

    HomeMain(),
    SearchTab(),
    Cart(),
    Signup2()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(

      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff550d0e),

      items: [
          
        BottomNavigationBarItem(
          title: Text('Food Court'),
          icon: Icon(FontAwesomeIcons.pizzaSlice,),
          //backgroundColor: Color(0xffDfd7cc),
          
        ),
        BottomNavigationBarItem(
          title: Text('Search'),
          icon: Icon(Icons.search_outlined),
         // backgroundColor: Color(0xffDfd7cc),
          
        ),
        BottomNavigationBarItem(
          title: Text('Cart'),
          icon: Icon(Icons.shopping_bag_outlined),
         // backgroundColor: Color(0xffDfd7cc),
          
        ),
        BottomNavigationBarItem(
          
          title: Text('Account'),
          icon: Icon(Icons.account_box_outlined,),
        //  backgroundColor: Color(0xffDfd7cc),
          
        ),

      ],

      onTap: (index){
        
        setState(() {
          _currentIndex=index;
          
        });
      },
    ),
      
    );
  }
}