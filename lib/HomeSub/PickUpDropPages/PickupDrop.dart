
import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickupDropSub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PickupDrop extends StatefulWidget {
  @override
  _PickupDropState createState() => _PickupDropState();
}

class _PickupDropState extends State<PickupDrop> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.indigo[900],
        title: Text(
          "Set up your task",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // The containers in the background
          new Column(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * .25,
                color: Colors.indigo[900],
              ),
              // new Container(
              //   height: MediaQuery.of(context).size.height * .10,
              //   color: Colors.red,
              // )
            ],
          ),
          // The card widget with top padding,
          // incase if you wanted bottom padding to work,
          // set the `alignment` of container to Alignment.bottomCenter
          new Container(
            // alignment: Alignment.topCenter,
            padding: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .20,
                right: 20.0,
                left: 20.0),
            child: new Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      _ChoosepickupAdress(context);
                    },
                    // onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (BuildContext context) =>
                    //                 PickupDropSub()));
                    //   },
                    child: new Card(
                      child: Image.asset(
                        'assets/Home/Pickupdropimg2.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      elevation: 0.0,
                    ),
                  ),
                  GestureDetector(
                    child: new Card(
                      child: Image.asset(
                        'assets/Home/Pickupdropimg3.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      elevation: 0.0,
                    ),
                    onTap: () {
                      _scaffoldKey.currentState.showSnackBar(new SnackBar(
                        content: new Text('Please select pickup location'),
                        duration: Duration(seconds: 1),
                      ));
                      // _scaffoldKey.currentState.showSnackBar(new SnackBar(
                      //     content: new Text('Please select pickup and drop location to proceed'),
                      //    duration: Duration(seconds: 2),));
                      // final snackBar = SnackBar(
                      //   content: Text('Hey! This is a SnackBar message.'),
                      //   duration: Duration(seconds: 5),
                      //   action: SnackBarAction(
                      //     label: 'Undo',
                      //     onPressed: () {
                      //       // Some code to undo the change.
                      //     },
                      //   ),
                      // );
                      // Scaffold.of(context).showSnackBar(snackBar);
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState.showSnackBar(new SnackBar(
                        content: new Text(
                            'Please select pickup and drop location to proceed'),
                        duration: Duration(seconds: 2),
                      ));
                    },
                    child: new Card(
                      child: Image.asset(
                        'assets/Home/Pickupdropimg4.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      elevation: 0.0,
                    ),
                  ),
                ],
              ),
              //              new Card(
              //   child:Image.asset('assets/Home/PickUpDrop/Pickupdropimg2.jpg',
              //                         width: MediaQuery.of(context).size.width, fit: BoxFit.fill, ),
              //   color: Colors.white,
              //   elevation: 0.0,
              // ),
            ),
          ),
          //),
          Column(
            children: [
              Container(
                padding: new EdgeInsets.only(
                    //top: MediaQuery.of(context).size.height * .20,
                    right: 20.0,
                    left: 20.0),
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: new Card(
                  child: Image.asset(
                    'assets/Home/Pickupdropimg1.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                  color: Colors.white,
                  elevation: 0.0,
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.grey[100],
        child: InkWell(
          //onTap: () => print('tap on close'),
          child: Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: Column(
              children: <Widget>[
                Divider(
                  color: Colors.black45,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 2),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                              text: ' Delivery partner fee'
                                  '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                              children: <TextSpan>[
                                // TextSpan(
                                //     text: ' \n+ MORE',
                                //     style: TextStyle(
                                //         color: Colors.blueAccent, fontSize: 12),
                                //     recognizer: TapGestureRecognizer()
                                //       ..onTap = () {
                                //         // navigate to desired screen
                                //       })
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 0),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                              text: ' Starting at 25 for first 2 kms !'
                                  '',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                // TextSpan(
                                //     text: ' \n+ MORE',
                                //     style: TextStyle(
                                //         color: Colors.blueAccent, fontSize: 12),
                                //     recognizer: TapGestureRecognizer()
                                //       ..onTap = () {
                                //         // navigate to desired screen
                                //       })
                              ]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _ChoosepickupAdress(context) {
  final _formKey = GlobalKey<FormState>();
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return new Container(
          height: 480.0,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                children: [
                  Text(
                    '    Choose pickup Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                          builder: (BuildContext context) => PickupDropSub()));
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.add_circle_outline_rounded),
                    iconSize: 30,
                    color: Color(0xff550d0e),
                    onPressed: () {},
                  ),
                  title: Text(
                    'Add New Address',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff550d0e),
                    ),
                  ),
                ),
              ),

              Divider(
                color: Colors.black26,
              ),
              // SizedBox(,
              //   height: MediaQuery.of(context).size.height * .03,
              // ),

              GestureDetector(
                onTap: () {
                  // showAlertDialog1(context);
                },
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.location_on),
                    iconSize: 30,
                    color: Colors.black87,
                    onPressed: () {},
                  ),
                  title: RichText(
                    text: TextSpan(
                        text: 'OTHER\n',
                        style: TextStyle(
                            letterSpacing: 0.3,
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Ranni,Kerala,India',

                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                            // recognizer: TapGestureRecognizer()
                            //   ..onTap = () {
                            //     // navigate to desired screen
                            //   }
                          )
                        ]),
                  ),
                ),
              ),

              Divider(
                color: Colors.black26,
              )
            ],
          ),
        );
      });
}
