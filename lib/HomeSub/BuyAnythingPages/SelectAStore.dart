import 'package:FoodDelivery/HomeSub/BuyAnythingPages/BuyAnythingSub.dart';
import 'package:FoodDelivery/HomeSub/BuyAnythingPages/MapSelectAStore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SelectAStore extends StatefulWidget {
  @override
  _SelectAStoreState createState() => _SelectAStoreState();
}

class _SelectAStoreState extends State<SelectAStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
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
                // child: Positioned(
                //   left: 0.0,
                //   right: 0.0,
                //   top: 130,
                //   bottom: 40.0,
                  child: Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: Text(
                        "Supermarket",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BuyAnythingSub()));
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
               // ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),

              Container(
                width: 320,
                color: Colors.grey[200],
                padding: EdgeInsets.fromLTRB(0,10,0,10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        //Icon(Icons.share),
                        IconButton(
             icon: FaIcon(FontAwesomeIcons.bullhorn),
             onPressed: (){},
             iconSize: 20.0,color: Colors.orange[900],
              ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * .01,
                        // ),
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
                                  'Please call the store before placing your',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .02,
                                ),
                                Text(
                                  'order to ensure it is open and the items are',
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 13, color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .02,
                                ),
                                Text(
                                  'available',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),

              Column(
                children: [
                  Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    padding: EdgeInsets.fromLTRB(15, 20, 20, 15),
                    child: Row(
                      children: [
                        Text(
                          "Top Search Results",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .06,
                        ),
                        Text(
                          'Powered by ',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                        Image.asset(
                          'assets/Home/google.jpg',
                          // width: MediaQuery.of(context).size.width,
                          //fit: BoxFit.fill,
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
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                              child: Container(
                  //color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(1, 8, 0, 0),
                  child: Column(
                    children: [
                      GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                              child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .05,
                            ),
                            Icon(Icons.store),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
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
                                      'Margin Free Super Market',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
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
                                      width:
                                          MediaQuery.of(context).size.width * .02,
                                    ),
                                    Text(
                                      'University of kerala Senate House Compus..',
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 13, color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),

                                // Row(
                                //   children: [
                                //     SizedBox(
                                //       width:
                                //           MediaQuery.of(context).size.width * .02,
                                //     ),

                                //     Text(
                                //       'available',
                                //       style: TextStyle(
                                //           // fontWeight: FontWeight.bold,
                                //           fontSize: 13,
                                //           color: Colors.black,),
                                //     ),
                                //   ],
                                // )
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
                height: 36,
              ),

              Container(
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                          child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Icon(Icons.store),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
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
                                    'SM STORE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'University of kerala Senate House Compus..',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 13, color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'This Store is Currently Closed',
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.red,
                                    ),
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
              Divider(
                color: Colors.black12,
                height: 36,
              ),

              Container(
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                          child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Icon(Icons.store),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
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
                                    'City Stores',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'University of kerala Senate House Compus..',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 13, color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              // Row(
                              //   children: [
                              //     SizedBox(
                              //       width:
                              //           MediaQuery.of(context).size.width * .02,
                              //     ),

                              //     Text(
                              //       'available',
                              //       style: TextStyle(
                              //           // fontWeight: FontWeight.bold,
                              //           fontSize: 13,
                              //           color: Colors.black,),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 36,
              ),

              Container(
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                          child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Icon(Icons.store),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
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
                                    'TRIVENI SUPER MARKEET',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'University of kerala Senate House Compus..',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 13, color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              // Row(
                              //   children: [
                              //     SizedBox(
                              //       width:
                              //           MediaQuery.of(context).size.width * .02,
                              //     ),

                              //     Text(
                              //       'available',
                              //       style: TextStyle(
                              //           // fontWeight: FontWeight.bold,
                              //           fontSize: 13,
                              //           color: Colors.black,),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 36,
              ),

              Container(
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                          child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Icon(Icons.store),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
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
                                    'Sajis Ration Shop',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'University of kerala Senate House Compus..',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 13, color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              // Row(
                              //   children: [
                              //     SizedBox(
                              //       width:
                              //           MediaQuery.of(context).size.width * .02,
                              //     ),

                              //     Text(
                              //       'available',
                              //       style: TextStyle(
                              //           // fontWeight: FontWeight.bold,
                              //           fontSize: 13,
                              //           color: Colors.black,),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 36,
              ),

              Container(
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                          child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Icon(Icons.store),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
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
                                    'Spancer\'s',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'University of kerala Senate House Compus..',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 13, color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              // Row(
                              //   children: [
                              //     SizedBox(
                              //       width:
                              //           MediaQuery.of(context).size.width * .02,
                              //     ),

                              //     Text(
                              //       'available',
                              //       style: TextStyle(
                              //           // fontWeight: FontWeight.bold,
                              //           fontSize: 13,
                              //           color: Colors.black,),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 36,
              ),

              Container(
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>MapSelectAStore()));

                },
                                          child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Icon(Icons.store),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
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
                                    'SM STORE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
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
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'University of kerala Senate House Compus..',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 13, color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              // Row(
                              //   children: [
                              //     SizedBox(
                              //       width:
                              //           MediaQuery.of(context).size.width * .02,
                              //     ),

                              //     Text(
                              //       'available',
                              //       style: TextStyle(
                              //           // fontWeight: FontWeight.bold,
                              //           fontSize: 13,
                              //           color: Colors.black,),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 36,
              ),

              
              Divider(
                color: Colors.black12,
                height: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
