import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickThisLocation.dart';
import 'package:flutter/material.dart';


class PickupDropSub extends StatefulWidget {
  @override
  _PickupDropSubState createState() => _PickupDropSubState();
}

class _PickupDropSubState extends State<PickupDropSub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2.0,
        title: Container(
          decoration: BoxDecoration(
              // color: Colors.tealAccent,
              // borderRadius: BorderRadius.circular(0),
              ),
          child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 14),
              hintText: 'Enter area, street name',
              suffixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
        //color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PickThisLocation()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.my_location_rounded,
                      color: Colors.black87,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PickThisLocation()));
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .02,
                                ),
                                Text(
                                  'Use Current Location',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Text(
                                'Using GPS',
                                style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13, color: Colors.grey,
                                ),
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
                              Divider(
                                thickness: 10,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
