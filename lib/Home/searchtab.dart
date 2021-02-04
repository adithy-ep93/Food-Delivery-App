import 'package:FoodDelivery/Home/SearchDish/BiriyaniMain/SearchMainHome.dart';
import 'package:FoodDelivery/Home/SearchDish/CakeMain/CakeMain.dart';
import 'package:FoodDelivery/Home/SearchDish/NorthIndian/NorthIndian.dart';
import 'package:FoodDelivery/Home/SearchDish/PizzaMain/PizzaMain.dart';

import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            SizedBox(height: MediaQuery.of(context).size.height*.04,),
           Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: TextField(
              
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),

              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),
              suffixIcon: Icon(Icons.search),

              hintText: 'Search for restaurants and foods',
              filled: true,
              fillColor: Colors.white,
              
              
             // icon: Icon(Icons.search),
             ),
          ),
        ),

         
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*.1,),
              Text(
                "Popular Cuisines",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(140.0),
                    child: GestureDetector(
                      onTap: (){
                         Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BiriyaniHome()));
                      },
                                          child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('assets/Home/biriyani.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(140.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CakeHome()));
                      },
                                          child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('assets/Home/cakes.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(140.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PizzaHome()));
                      },
                                          child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('assets/Home/pizza.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(140.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => NorthIndian()));
                      },
                                          child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('assets/Home/North indian food.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: 90,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "Biriyani",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(05.0),
                          child: Text(
                            "Cakes & \nDesserts",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 70,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(06.0),
                          child: Text(
                            "Pizzas",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(06.0),
                          child: Text(
                            "North \nIndian",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          const Divider(
              color: Colors.black12,
              height: 20,
              thickness: 8,
              indent: 0,
              endIndent: 0),
        ],
      ),
    );
  }
}
