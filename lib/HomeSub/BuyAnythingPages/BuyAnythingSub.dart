
import 'package:FoodDelivery/HomeSub/BuyAnythingPages/MapSelectThisLocation.dart';

import 'package:flutter/material.dart';


class BuyAnythingSub extends StatefulWidget {
  @override
  _BuyAnythingSubState createState() => _BuyAnythingSubState();
}

class _BuyAnythingSubState extends State<BuyAnythingSub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Colors.black,
          //   ),
          //   onPressed: () {},
          // ),
          elevation: 0.0,
          title: Text(
            'Select A Store',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: MediaQuery.of(context).size.height*.03,),

              Container(
                padding: EdgeInsets.all(15),
                // decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.white10,
                //     blurRadius: 0,
                //     spreadRadius:1,
                //     offset: const Offset(0, 1),
                //     ),
                //   ],
                // ),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400])),
                    suffixIcon: Icon(Icons.search),

                    hintText: 'Search for any store',
                    filled: true,
                    fillColor: Colors.white,

                    // icon: Icon(Icons.search),
                  ),
                ),
              ),

              //SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.black26,
                        height: 36,
                      )),
                ),
                Text(
                  "OR",
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                      child: Divider(
                        color: Colors.black26,
                        height: 36,
                      )),
                ),
              ]),

              ListTile(
                leading: Icon(Icons.location_city),
                title: Text(
                  'Set location of the store on map',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(Icons.chevron_right),

                 onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectThisLocation()));

                },
              ),
              Divider(
                thickness: 15,
                color: Colors.grey[300],
              ),

              Row(
                children: [
                  Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    padding: EdgeInsets.fromLTRB(15, 20, 20, 15),
                    child: Column(
                      children: [
                        Text(
                          "Recommended Stores",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectThisLocation()));
                },
                              child: Container(
                  //color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        //color: Colors.red,
                        height: MediaQuery.of(context).size.height * .13,
                        width: MediaQuery.of(context).size.width * .99999,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .04,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.store)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * .02,
                                    ),
                                    Text(
                                      'Nilgiri\'s Supermarket',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .01,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * .02,
                                    ),
                                    Text(
                                      'PKP Manor, Mahathma Gandhi Rd, Santhi.. | 2 Kms',
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 12, color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .01,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * .02,
                                    ),
                                    Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.brown,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * .01,
                                    ),
                                    Text(
                                      'Last order delivered 45 mins ago',
                                      style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.brown),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
              
              Divider(
                        color: Colors.black12,
                        //height: 36,
                      ),

               



            ],
          ),
        ),
      ),
    );
  }
}
