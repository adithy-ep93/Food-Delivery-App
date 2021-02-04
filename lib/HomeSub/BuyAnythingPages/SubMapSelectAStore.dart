import 'package:FoodDelivery/HomeSub/BuyAnythingPages/SelectAStore.dart';
import 'package:FoodDelivery/HomeSub/PickUpDropPages/PickupDropSub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubMapSelectAStore extends StatefulWidget {
  @override
  _SubMapSelectAStoreState createState() => _SubMapSelectAStoreState();
}

class _SubMapSelectAStoreState extends State<SubMapSelectAStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: CustomSliverDelegate(
                expandedHeight: 170,
              ),
            ),
            SliverFillRemaining(
              child: Center(
                child: Container(
                    //child: Text("Hai"),
                    child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .08,
                            ),
                            Text(
                              'Make a list of items you need',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .08,
                            ),
                            ButtonTheme(
                              //minWidth: 310.0,
                              height: 60.0,
                              child: OutlineButton(
                                onPressed: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(
                                    //   width:MediaQuery.of(context).size.width * .02,
                                    //   ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(
                                        Icons.check_circle_outline_rounded,
                                        size: 12.0,
                                        color: Colors.grey,
                                      ),
                                    ),

                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .03,
                                    ),

                                    Align(
                                      alignment: Alignment.centerLeft,
                                                                  child:Text(
                              'Add Item',
                              style: TextStyle(
                                 // fontWeight: FontWeight.bold, 
                                  fontSize: 12),
                            ),
                                      //Column(children: [
                                      //                                   Container(
                                      //                                                                                 child: Flexible(
                                      //                                                                                   child: TextField(
                                      //   decoration: InputDecoration(
                                      //     hintStyle: TextStyle(fontSize: 10),
                                      //     hintText: 'Add Item',

                                      //     border: InputBorder.none,
                                      //     contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                      //   ),
                                      // ),
                                      //                                     ),
                                      //                                   ),
                                      //                             ],

                                      //                             ),
                                    ),

                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .55,
                                    ),
                                  ],
                                ),
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.orange,
                                    // width: 1,
                                    // style: BorderStyle.solid
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .08,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'NOTE :',
                                  style: TextStyle(
                                    letterSpacing: 0.3,
                                    color: Colors.black54,
                                    fontSize: 14,
                                    //fontWeight: FontWeight.bold
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          ' Delivery of alcohol or any illegal items is\n'
                                          'prohibited by low. Swiggy reserves the right to share\n'
                                          'account details with lw enforcement authorities.\n',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 12),
                                      // recognizer: TapGestureRecognizer()
                                      //   ..onTap = () {
                                      //     // navigate to desired screen
                                      //   }
                                    )
                                  ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: Colors.grey[100],
        child: InkWell(
          //onTap: () => print('tap on close'),
          child: Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 0.0),
                      height: 40,
                      width: 360,
                      color: Colors.grey[300],
                      child:
                          Center(child: Text("Starting at 25 for first Kms!")),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    ButtonTheme(
                      minWidth: 325.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                           _ChoosepickupAdress2(context);
                        },
                        child: Text(
                          "SELECT DELIVERY ADDRESS",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.0,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.green[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                )
                // Icon(
                //   Icons.close,
                //   color: Theme.of(context).accentColor,
                // ),
                // Text('close'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    //final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              backgroundColor: Colors.indigo[800],

              elevation: 0.0,
              title: Text(
                "Buy Anything",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              // Opacity(
              //     opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
              //     child: Text("Buy Anything")),

              actions: <Widget>[
                // Container(
                //            padding: const EdgeInsets.fromLTRB(0, 2, 5, 2),
                //             height: 5,
                //             //width: 30,
                //             //padding: EdgeInsets.all(5),
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                   color: Colors.white10, width: 0),
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 new BoxShadow(
                //                   //color: Colors.blue,
                //                   color: Colors.grey.withOpacity(0.2),
                //                   spreadRadius: 2,
                //                   blurRadius: 7,
                //                   offset: Offset(
                //                       0, 1), // changes position of shadow
                //                 ),
                //               ],
                //             ),
                //     child:
                FlatButton(
                  child: Text(
                    'How it works?',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  //color: Colors.blue[100],
                  textColor: Colors.white,
                  onPressed: () {
                    _HowItWorks(context);
                  },
                ),
                // ),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            //top: cardTopPosition > 0 ? cardTopPosition : 0,
            top: 130,
            bottom: 40.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20 * percent),
                child: Card(
                  elevation: 0.0,
                  //child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SelectAStore()));
                    },
                    child: Image.asset(
                      'assets/Home/BuyAnything1.jpg',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  //),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

void _ChoosepickupAdress2(context) {
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




void _HowItWorks(context) {
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
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0))),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                children: [
                  Text(
                    ' How It Works...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/Home/hiw1.jpg',
                ),
                title: RichText(
                  text: TextSpan(
                      text: 'Select a store',
                      style: TextStyle(
                        letterSpacing: 0.3,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' for items you want to \n'
                              'buy',

                          style: TextStyle(color: Colors.black54, fontSize: 14),
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () {
                          //     // navigate to desired screen
                          //   }
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/Home/hiw2.jpg',
                ),
                title: RichText(
                  text: TextSpan(
                      text: 'Make a list of items & place order\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'without any payment',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () {
                          //     // navigate to desired screen
                          //   }
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/Home/hiw3.jpg',
                ),
                title: RichText(
                  text: TextSpan(
                      text: 'Pay after you conform item images\n',
                      style: TextStyle(
                          letterSpacing: 0.3,
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'sent by our delivery partner',

                          style: TextStyle(color: Colors.black54, fontSize: 14),
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () {
                          //     // navigate to desired screen
                          //   }
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 8, 15, 5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "PROCEED",
                          style: TextStyle(  color: Color(0xffDfd7cc),
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                color: Color(0xff550d0e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 20),
                ),
              ),
            ],
          ),
        );
      });
}