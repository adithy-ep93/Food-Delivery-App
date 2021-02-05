//import 'package:FoodDelivery/Signup/Signup2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Paymentmodes extends StatelessWidget {
  IconData get k => null;

  // final String number1;

  // Paymentmodes({Key key, @required this.number1}) : super(key: key);

  //Create _launchURL function

  _launchURL() async {
    //const url = "https://google.com";
    const url =
        "https://eu.account.amazon.com/ap/signin?_encoding=UTF8&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.pape.max_auth_age=0&ie=UTF8&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=lwa-eu&openid.assoc_handle=amzn_lwa_eu&marketPlaceId=A1800M35GFR6H2&arb=fad88e15-1048-439a-bddd-0751e91ff01a&language=en_GB&openid.return_to=https%3A%2F%2Feu.account.amazon.com%2Fap%2Foa%3FmarketPlaceId%3DA1800M35GFR6H2%26arb%3Dfad88e15-1048-439a-bddd-0751e91ff01a%26language%3Den_GB&enableGlobalAccountCreation=1&showRmrMe=1&rmrMeDefaultSelected=1&metricIdentifier=amzn1.application.5ce5b6cafba24a6daf0c072bfc192e16&signedMetricIdentifier=%2F3aEC7mhBlBiYjPbeoq8VGumVUmPrsDwPvBexc9bNj4%3D";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "CANCEL",
        style: TextStyle(
          color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text(
        "PROCEED",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
      contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      title: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/Account/Paymentmodes/pm1.jpg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(5),
        height: 99,
        width: 280,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Link Freecharge wallet associated with this \nnumber',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  //'$number1',
                  '+91 856932481',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),

            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Row(
              children: [
                Text(
                  'If you don\'t have an account, we\'ll create one for you',
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
          ],
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog1(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "CANCEL",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text(
        "PROCEED",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
      contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      title: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/Account/Paymentmodes/pm2.jpg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(5),
        height: 99,
        width: 280,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Link Mobikwik wallet associated with this \nnumber',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  //'$number1',
                  '+91 856932481',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),

            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Row(
              children: [
                Text(
                  'If you don\'t have an account, we\'ll create one for you',
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
          ],
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog2(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "CANCEL",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text(
        "PROCEED",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
      contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      title: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/Account/Paymentmodes/pm3.jpg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(5),
        height: 99,
        width: 280,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Link Paytm wallet associated with this \nnumber',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  //'$number1',
                  '+91 856932481',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),

            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Row(
              children: [
                Text(
                  'If you don\'t have an account, we\'ll create one for you',
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
          ],
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog3(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "CANCEL",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text(
        "PROCEED",
        style: TextStyle(
           color: Color(0xff550d0e),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
      contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      title: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/Account/Paymentmodes/pm4.jpg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      content: Container(
        padding: EdgeInsets.all(5),
        height: 99,
        width: 280,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Link Mobikwik wallet associated with this \nnumber',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  //'$number1',
                  '+91 856932481',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),

            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Row(
              children: [
                Text(
                  'If you don\'t have an account, we\'ll create one for you',
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // SizedBox(height: MediaQuery.of(context).size.height*.02,),
          ],
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

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
          "PAYMENTS",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: new Container(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "WALLET",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset(
                      'assets/Account/Paymentmodes/pm1.jpg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Freecharge',
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: Text(
                      "LINK ACCOUNT",
                      style: TextStyle(
                         color: Color(0xff550d0e),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      showAlertDialog(context);
                    },
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/Account/Paymentmodes/pm2.jpg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Mobikwik',
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: Text(
                      "LINK ACCOUNT",
                      style: TextStyle(
                         color: Color(0xff550d0e),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      showAlertDialog1(context);
                    },
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/Account/Paymentmodes/pm3.jpg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Paytm',
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: Text(
                      "LINK ACCOUNT",
                      style: TextStyle(
                         color: Color(0xff550d0e),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      showAlertDialog2(context);
                    },
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/Account/Paymentmodes/pm4.jpg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Phonepe',
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: Text(
                      "LINK ACCOUNT",
                      style: TextStyle(
                       color: Color(0xff550d0e),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      showAlertDialog3(context);
                    },
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/Account/Paymentmodes/pm5.jpg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Amazon Pay',
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: Text(
                      "LINK ACCOUNT",
                      style: TextStyle(
                         color: Color(0xff550d0e),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //In onTap pass in _launchURL which will be created in the next Step.

                    onTap: () {
                      _launchURL();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
