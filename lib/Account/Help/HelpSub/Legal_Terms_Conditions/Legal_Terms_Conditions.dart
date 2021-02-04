import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class Legal_Terms_Conditions extends StatefulWidget {
  @override
  _Legal_Terms_ConditionsState createState() => _Legal_Terms_ConditionsState();
}

class _Legal_Terms_ConditionsState extends State<Legal_Terms_Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_sharp, color: Colors.black),
        ),
        title: Text(
          "HELP AND SUPPORT",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: new Column(
          children: [
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "LEGAL, TERMS & CONDITIONS",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),


            ListTile(
                title: ExpandablePanel(
                  header: Text('Terms of Use',
                    style: TextStyle(fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                          ),
                     maxLines: 1,
                    ),
                  expanded: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                            children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '\n'
                                'Please drop us an email mensioning the channels\n'
                                'you would like to be unsubscribed from. We will \n'
                                'take an action and conform within 24-48 hours.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black54,
                                  //fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.blue[900],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue[900],

                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                tapHeaderToExpand: true,
                hasIcon: false,
              ),
            ),



            Divider( color: Colors.black12, ),
            ListTile(
                title: ExpandablePanel(
                  header: Text('Cancellations and Refunds',
                    style: TextStyle(fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                          ),
                     maxLines: 1,
                    ),
                  expanded: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                            children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '\n'
                                'Please drop us an email mensioning the channels\n'
                                'you would like to be unsubscribed from. We will \n'
                                'take an action and conform within 24-48 hours.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black54,
                                  //fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.blue[900],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue[900],

                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                tapHeaderToExpand: true,
                hasIcon: false,
              ),
            ),


            Divider(color: Colors.black12,),
            ListTile(
                title: ExpandablePanel(
                  header: Text('Privacy Policy',
                    style: TextStyle(fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                          ),
                     maxLines: 1,
                    ),
                  expanded: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                            children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '\n'
                                'Please drop us an email mensioning the channels\n'
                                'you would like to be unsubscribed from. We will \n'
                                'take an action and conform within 24-48 hours.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black54,
                                  //fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.blue[900],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue[900],

                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                tapHeaderToExpand: true,
                hasIcon: false,
              ),
            ),


            Divider(
              color: Colors.black12,
            ),
            ListTile(
                title: ExpandablePanel(
                  header: Text('Terms of Use for Yummy ON-TIME / Assured',
                    style: TextStyle(fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                          ),
                     maxLines: 1,
                    ),
                  expanded: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                            children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '\n'
                                'Please drop us an email mensioning the channels\n'
                                'you would like to be unsubscribed from. We will \n'
                                'take an action and conform within 24-48 hours.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black54,
                                  //fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.blue[900],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue[900],

                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                tapHeaderToExpand: true,
                hasIcon: false,
              ),
            ),


            Divider(
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
