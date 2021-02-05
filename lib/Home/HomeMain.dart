import 'package:FoodDelivery/Account/My_Account/Offers/Offers.dart';

import 'package:FoodDelivery/HomeSub/BuyAnythingPages/BuyAnything.dart';
import 'package:FoodDelivery/HomeSub/Genie/Genie.dart';
import 'package:FoodDelivery/HomeSub/Meat/Meat.dart';
import 'package:FoodDelivery/HomeSub/Book/Book.dart';

import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickupDrop.dart';

import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickupDropSub.dart';
import 'package:FoodDelivery/HomeSub/Restaurants/AllStars.dart';
import 'package:FoodDelivery/HomeSub/Restaurants/DineOnBudget.dart';

import 'package:FoodDelivery/HomeSub/TopPicks/AlSaj.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/BurgerKing.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/KFC.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/MRA.dart';
import 'package:FoodDelivery/HomeSub/TopPicks/SubWay.dart';
import 'package:FoodDelivery/HomeSub/coupons/Amazon.dart';
import 'package:FoodDelivery/HomeSub/coupons/BuyTwoFree.dart';
import 'package:FoodDelivery/HomeSub/coupons/SBIDeals.dart';

import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:FoodDelivery/HomeSub/Restaurants/Restaurant.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

final List imgListOffer = [
  'assets/Home/1.jpg',
  'assets/Home/2.jpg',
  'assets/Home/3.jpg',
  'assets/Home/4.jpg',
];

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffDfd7cc),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => PickupDropSub()));
          },
          child: Icon(
            Icons.location_on_outlined,
            color: Color(0xff550d0e),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Offers()));
            },
            child: Container( margin: const EdgeInsets.only(left: 0.0, right: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.local_offer_outlined,
                    color: Color(0xff550d0e),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .01),
                  Text(
                    'Offers ',
                    style: TextStyle(
                        color: Color(0xff550d0e), fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * .1,
                  // ),
                ],
              ),
            ),
          ),
        ],
        title: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => PickupDropSub()));
          },
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Color(0xff550d0e)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'House Name , Place , Location',
                    style: TextStyle(fontSize: 13, color: Color(0xff550d0e)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            ImageButton(
              children: <Widget>[],
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .15,
              paddingTop: 5,
              pressedImage: Image.asset(
                "assets/Home/h1.jpg",
              ),
              unpressedImage: Image.asset("assets/Home/h1.jpg"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => RestaurantHome()));
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Genie()));
                    },
                    child: Image.asset('assets/Home/h2.jpg'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Meat()));
                    },
                    child: Image.asset('assets/Home/h3.jpg'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Book()));
                    },
                    child: Image.asset('assets/Home/h4.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Color(0xff550d0e),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .05,
                  ),
                  Text(
                    'TOP PICKS FOR YOU',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width * 0.98,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              BurgerKing()));
                                },
                                child:
                                    Image.asset('assets/Home/burger-king.jpg'),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Text(
                                'Burger King',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              KFC()));
                                },
                                child: Image.asset('assets/Home/kf1.jpg'),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .015,
                              ),
                              Text(
                                'KFC',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              AlSaj()));
                                },
                                child: Image.asset('assets/Home/alsaj.jfif'),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Text(
                                'AL -SAJ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SubWay()));
                                },
                                child: Image.asset('assets/Home/sub.jpg'),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Text(
                                'Sub Way',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              MRA()));
                                },
                                child: Image.asset('assets/Home/mra.jpg'),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Text(
                                'MRA',
                                style: TextStyle(fontWeight: FontWeight.bold),
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
            Row(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * .25,
                  width: MediaQuery.of(context).size.width * 0.98,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              DineOnBudget()));
                                },
                                child: Image.asset('assets/Home/h5.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              AllStars()));
                                },
                                child: Image.asset('assets/Home/h10.jpg'),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Coupons For You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width * 0.98,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SBIDeals()));
                                },
                                child: Image.asset('assets/Home/o1.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SBIDeals()));
                                },
                                child: Image.asset('assets/Home/o2.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              BuyTwoFree()));
                                },
                                child: Image.asset('assets/Home/o3.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Amazon()));
                                },
                                child: Image.asset('assets/Home/o4.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              BuyTwoFree()));
                                },
                                child: Image.asset('assets/Home/o5.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          //height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              BuyTwoFree()));
                                },
                                child: Image.asset('assets/Home/o5.jpg'),
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
            Divider(
              color: Colors.grey[200],
              thickness: 10,
            ),
            Container(
                constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height * .1),
                child: imageSliderOffer(context)),
            Divider(
              color: Colors.grey[200],
              thickness: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Icon(
                  Icons.local_offer_outlined,
                  color: Color(0xff550d0e),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                Text(
                  'TOP OFFERS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .08,
                ),
                Text(
                  'Get 20 - 50% off',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .45,
              width: MediaQuery.of(context).size.width * 0.98,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => MRA()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * .999,
                          child: Row(
                            children: [
                              Image.asset('assets/Home/mra.jpg'),
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text(
                                          'MRA',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .018,
                                        ),
                                        Icon(Icons.star),
                                        Text(
                                            '  4.0 .  36 mins . ₹ 250 for two'),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.black,
                                      thickness: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Icon(
                                          Icons.local_offer_outlined,
                                          color: Color(0xff550d0e),
                                        ),
                                        Text('   Buy 2 Get 1 Free'),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => AlSaj()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * 0.9999,
                          child: Row(
                            children: [
                              Image.asset('assets/Home/alsaj.jfif'),
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text(
                                          'AL SAJ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .018,
                                        ),
                                        Icon(Icons.star),
                                        Text(
                                            '  4.0 .  36 mins . ₹ 250 for two'),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.black,
                                      thickness: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Icon(
                                          Icons.local_offer_outlined,
                                          color: Color(0xff550d0e),
                                        ),
                                        Text('   Use YUMMYIT'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => KFC()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * 0.999,
                          child: Row(
                            children: [
                              Image.asset('assets/Home/kf1.jpg'),
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text(
                                          'KFC',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .018,
                                        ),
                                        Icon(Icons.star),
                                        Text(
                                            '  4.0 .  36 mins . ₹ 250 for two'),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.black,
                                      thickness: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Icon(
                                          Icons.local_offer_outlined,
                                          color: Color(0xff550d0e),
                                        ),
                                        Text('   Buy 2 Get 1 Free'),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => SubWay()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * 0.999,
                          child: Row(
                            children: [
                              Image.asset('assets/Home/burger-king.jpg'),
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text(
                                          'SubWay',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text('Indian ,Arabian , Chinese'),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .018,
                                        ),
                                        Icon(Icons.star),
                                        Text(
                                            '  4.0 .  36 mins . ₹ 250 for two'),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.black,
                                      thickness: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Icon(
                                          Icons.local_offer_outlined,
                                          color: Color(0xff550d0e),
                                        ),
                                        Text('   Use YUMMYYIT'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Genie()));
                },
                child: Image.asset('assets/Home/geni.png')),
            Divider(
              color: Colors.grey[200],
              thickness: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * .5,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BuyAnything()));
                      },
                      child: Image.asset('assets/Home/6.jpg')),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * .5,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    PickupDrop()));
                      },
                      child: Image.asset('assets/Home/7.jpg')),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
                Text(
                  'All Restaurants Nearby',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .03,
                ),
                Text(
                  'discover unique taste near you',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SubWay()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * 0.999,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                    Image.asset(
                      'assets/Home/burger-king.jpg',
                      fit: BoxFit.fill,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
                            Text(
                              'MRA',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
                            Text(
                              'Indian ,Arabian , Chinese',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .018,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            Text(
                              '  4.0 .  36 mins . ₹ 250 for two',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MRA()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .17,
                width: MediaQuery.of(context).size.width * 0.9999,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                    Image.asset('assets/Home/mra.jpg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
                            Text(
                              'SubWay',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
                            Text(
                              'Indian ,Arabian , Chinese',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .018,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            Text(
                              '  4.0 .  36 mins . ₹ 250 for two',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => KFC()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .17,
                width: MediaQuery.of(context).size.width * 0.9999,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                    Image.asset('assets/Home/kf1.jpg'),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text(
                                'KFC',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text('Indian ,Arabian , Chinese'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .018,
                              ),
                              Icon(Icons.star),
                              Text('  4.0 .  36 mins . ₹ 250 for two'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Icon(
                                Icons.local_offer_outlined,
                                color: Color(0xff550d0e),
                              ),
                              Text('   Use YUMMYYIT'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AlSaj()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .17,
                width: MediaQuery.of(context).size.width * 0.9999,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                    Image.asset('assets/Home/alsaj.jfif'),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text(
                                'AL SAJ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text('Indian ,Arabian , Chinese'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .018,
                              ),
                              Icon(Icons.star),
                              Text('  4.0 .  36 mins . ₹ 250 for two'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Icon(
                                Icons.local_offer_outlined,
                                color: Color(0xff550d0e),
                              ),
                              Text('   Use YUMMYYIT'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BurgerKing()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .17,
                width: MediaQuery.of(context).size.width * 0.9999,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                    Image.asset('assets/Home/burger-king.jpg'),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text(
                                'Burger King',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text('Indian ,Arabian , Chinese'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .018,
                              ),
                              Icon(Icons.star),
                              Text('  4.0 .  36 mins . ₹ 250 for two'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Icon(
                                Icons.local_offer_outlined,
                                color: Color(0xff550d0e),
                              ),
                              Text('   Use YUMMYIT'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/Home/Splash.jpg',
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}

// Swiper imageSlider(context){

// return new Swiper(

//   //autoplay: true,
//   //duration: 3000,
//   itemBuilder: (BuildContext context, int index) {
//      return new Image.asset(
//                   imgList[index],
//                   fit: BoxFit.fill,
//                   );

//   },

//   itemCount: 3,
//   viewportFraction: 1,
//   scale: .9,
//  pagination: new SwiperPagination(
//               margin: new EdgeInsets.all(5.0),
//               builder: new DotSwiperPaginationBuilder(
//                   color: Colors.grey[400], activeColor: Colors.orange[700])),
//   //control: new SwiperControl(),
// );

// }

Swiper imageSliderOffer(context) {
  return new Swiper(
    autoplay: true,
    duration: 3000,
    itemBuilder: (BuildContext context, int index) {
      return new Image.asset(
        imgListOffer[index],
        fit: BoxFit.fill,
      );
    },

    itemCount: 4,
    viewportFraction: 1,
    scale: .9,
//  pagination: new SwiperPagination(
//               margin: new EdgeInsets.all(5.0),
//               builder: new DotSwiperPaginationBuilder(
//                   color: Colors.grey[400], activeColor: Colors.orange[700])),
    //control: new SwiperControl(),
  );
}
