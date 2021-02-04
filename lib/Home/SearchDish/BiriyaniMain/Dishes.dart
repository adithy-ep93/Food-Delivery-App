import 'package:flutter/material.dart';

class Dishes extends StatelessWidget {
  final title = [
    'Rated 4 +',
    'Less than 30 mins',
    'Less than Rs 300',
    'Rs 300 - Rs 600',
    'Above Rs 650'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[50],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Divider(
                  color: Colors.black,
                )),
            Container(
              height: 70.0,
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {},
                        child: Text(
                          title[index],
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),

                        //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            Divider(
              thickness: 15,
              color: Colors.grey[200],
            ),



            Container(
              padding: EdgeInsets.fromLTRB(1, 20, 0, 0),
              child: Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    height: MediaQuery.of(context).size.height * .25,
                    width: MediaQuery.of(context).size.width * .99999,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 18,
                                      //padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.red[900], width: 1),
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          new BoxShadow(
                                            color: Colors.grey[50],
                                            offset: new Offset(0.0, 0.0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        size: 14.0,
                                        color: Colors.red[900],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .01,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14.0,
                                      color: Colors.yellow[700],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .01,
                                    ),
                                    Text(
                                      "BESTSELLER",
                                      style: TextStyle(
                                        color: Colors.yellow[700],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .09,
                                    ),
                                  ],
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
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  "Pot Biriyani",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
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
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                // Icon(Icons.star),
                                Text(
                                  "₹155",
                                  style: TextStyle(
                                    color: Colors.black54,
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
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  "1 Peace broasred Chicken",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * .12,
                            // ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlignment: ,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .08,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  height: 110,
                                  width: 130,
                                  child: Image.asset(
                                    'assets/Home/biriyani.jpg',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),

                            // SizedBox(
                            //     height: MediaQuery.of(context).size.height * .04,
                            //   ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .13,
                                ),
                                Container(
                                  //color: Colors.blue,
                                  height: 40,
                                  width: 95,
                                  //padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white10, width: 3),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Colors.white,
                                    textColor: Colors.green,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * .03,
                  // ),
                ],
              ),
            ),


            Divider(),
            Container(padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
               child:Column(children: [
              //                               SizedBox(
              //                 height: MediaQuery.of(context).size.height * .01,
              //               ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  "From Paradise Hotel",
                                  style: TextStyle(
                                    color: Colors.black,fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),


                             Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .03,
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
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Icon(
                                  Icons.local_offer_outlined,
                                  color: Colors.orange[700],
                                ),
                                Text('10 % off on orders above 129'),
                               
                              ],
                            )

              ],)
            ),
            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
            Divider(
              thickness: 15,
              color: Colors.grey[200],
            ),

              Container(
              padding: EdgeInsets.fromLTRB(1, 20, 0, 0),
              child: Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    height: MediaQuery.of(context).size.height * .25,
                    width: MediaQuery.of(context).size.width * .99999,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 18,
                                      //padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.red[900], width: 1),
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          new BoxShadow(
                                            color: Colors.grey[50],
                                            offset: new Offset(0.0, 0.0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        size: 14.0,
                                        color: Colors.red[900],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .01,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14.0,
                                      color: Colors.yellow[700],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .01,
                                    ),
                                    Text(
                                      "BESTSELLER",
                                      style: TextStyle(
                                        color: Colors.yellow[700],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .09,
                                    ),
                                  ],
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
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  "Egg Biriyanni",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
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
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                // Icon(Icons.star),
                                Text(
                                  "₹120",
                                  style: TextStyle(
                                    color: Colors.black54,
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
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  "EDD + SALAD + PICKLE",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * .12,
                            // ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlignment: ,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .08,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  height: 110,
                                  width: 130,
                                  child: Image.asset(
                                    'assets/Home/mra.jpg',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),

                            // SizedBox(
                            //     height: MediaQuery.of(context).size.height * .04,
                            //   ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .13,
                                ),
                                Container(
                                  //color: Colors.blue,
                                  height: 40,
                                  width: 95,
                                  //padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white10, width: 3),
                                    borderRadius: BorderRadius.circular(0),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Colors.white,
                                    textColor: Colors.green,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * .03,
                  // ),
                ],
              ),
            ),


            Divider(),
            Container(padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
               child:Column(children: [
              //                               SizedBox(
              //                 height: MediaQuery.of(context).size.height * .01,
              //               ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  "From Paradise Hotel",
                                  style: TextStyle(
                                    color: Colors.black,fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),


                             Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .03,
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
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Icon(
                                  Icons.local_offer_outlined,
                                  color: Colors.orange[700],
                                ),
                                Text('10 % off on orders above 129'),
                               
                              ],
                            )

              ],)
            ),
            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
            Divider(
              thickness: 15,
              color: Colors.grey[200],
            ),
          




          ],

          
        ),
      ),
    );
  }
}
