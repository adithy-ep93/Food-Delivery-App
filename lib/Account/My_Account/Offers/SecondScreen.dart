import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:expandable_text/expandable_text.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
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
                        "AVAILABLE COUPONS",
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
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 180,
                      padding: EdgeInsets.all(10),
                      //margin: EdgeInsets.fromLTRB(20,10,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.yellow[50],
                            offset: new Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Account/Offer/img1.jpg',
                          ),
                          SizedBox(
                            width: 35.0,
                          ),
                          Text(
                            'KOTAK125',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Get 25% discount using Kotak Bank Credit o...',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Terms And Conditions',
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

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            // SizedBox(
            //   height: 1.0,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text:
                              'Use code KOTAK125 and  get 20 % discount up to INR\n'
                              '125/- on orders above INR 500/-\n',
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
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ExpandableText(
                      ' \n'
                      'Terms & Conditions Apply\n\n'
                      '  Offer vaild only on Thursdays\n\n'
                      '  Offer vaild twice per user per month\n\n'
                      '  Offer vaild only on Katak Credit & Debit Cards\n\n'
                      '  Offer vaild twice per user during the offer period\n\n'
                      '  Offer vaild on a minimum cart value of INR 250/-\n\n'
                      '  Other T&Cs may apply\n\n'
                      '  Offer vaild till Jan 28, 2021 11.59 PM\n\n',
                      expandText: '+ More',
                      collapseText: 'Show Less',
                      maxLines: 1,
                      linkColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            //               Padding(
            //                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            //                 child: ExpandableText(''
            //          'Terms & Conditions Apply\n\n'
            //          'Offer vaild twice per user during the offer period\n\n'
            //          'Offer vaild on a minimum cart value of INR 250/-\n\n',
            //     expandText: '+ More',
            //     collapseText: 'Show Less',
            //     maxLines: 1,
            //     linkColor: Colors.blue,
            // ),
            //               ),

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 210,
                      padding: EdgeInsets.all(10),
                      //margin: EdgeInsets.fromLTRB(20,10,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.yellow[50],
                            offset: new Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Account/Offer/img2.jpg',
                          ),
                          SizedBox(
                            width: 35.0,
                          ),
                          Text(
                            'GOODFOODTRAIL',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Get 15% discount using HDFC Bank Cards',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Terms And Conditions',
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
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            // SizedBox(
            //   height: 1.0,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text:
                              'Use code GOODFOODTRAIL & get 15 % discount up\n'
                              'to INR 100/- on orders above INR 600/-\n',
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
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ExpandableText(
                      ' \n'
                      'Terms & Conditions Apply\n\n'
                      '  Offer vaild only on Thursdays\n\n'
                      '  Offer vaild twice per user per month\n\n'
                      '  Offer vaild only on Katak Credit & Debit Cards\n\n'
                      '  Offer vaild twice per user during the offer period\n\n'
                      '  Offer vaild on a minimum cart value of INR 250/-\n\n'
                      '  Other T&Cs may apply\n\n'
                      '  Offer vaild till Jan 28, 2021 11.59 PM\n\n',
                      expandText: '+ More',
                      collapseText: 'Show Less',
                      maxLines: 1,
                      linkColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 180,
                      padding: EdgeInsets.all(10),
                      //margin: EdgeInsets.fromLTRB(20,10,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.yellow[50],
                            offset: new Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Account/Offer/img3.jpg',
                          ),
                          SizedBox(
                            width: 35.0,
                          ),
                          Text(
                            'AUBANK125',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Get 25% discount using AU Bank Cards',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Terms And Conditions',
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
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            // SizedBox(
            //   height: 1.0,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text:
                              'Use code AUBANK125 & get 15 % discount up to INR\n'
                              '50/- on orders above INR 250/-\n',
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
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ExpandableText(
                      ' \n'
                      'Terms & Conditions Apply\n\n'
                      '  Offer vaild only on Thursdays\n\n'
                      '  Offer vaild twice per user per month\n\n'
                      '  Offer vaild only on Katak Credit & Debit Cards\n\n'
                      '  Offer vaild twice per user during the offer period\n\n'
                      '  Offer vaild on a minimum cart value of INR 250/-\n\n'
                      '  Other T&Cs may apply\n\n'
                      '  Offer vaild till Jan 28, 2021 11.59 PM\n\n',
                      expandText: '+ More',
                      collapseText: 'Show Less',
                      maxLines: 1,
                      linkColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 180,
                      padding: EdgeInsets.all(10),
                      //margin: EdgeInsets.fromLTRB(20,10,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.yellow[50],
                            offset: new Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Account/Offer/img4.jpg',
                          ),
                          SizedBox(
                            width: 35.0,
                          ),
                          Text(
                            'VISTA20',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Get 20% discount using HDFC Bank FoodPl...',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Terms And Conditions',
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
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            // SizedBox(
            //   height: 1.0,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text:
                              'Use code VISTA20 & get 15 % discount up to INR\n'
                              '50/- on orders above INR 250/-\n',
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
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ExpandableText(
                      ' \n'
                      'Terms & Conditions Apply\n\n'
                      '  Offer vaild only on Thursdays\n\n'
                      '  Offer vaild twice per user per month\n\n'
                      '  Offer vaild only on Katak Credit & Debit Cards\n\n'
                      '  Offer vaild twice per user during the offer period\n\n'
                      '  Offer vaild on a minimum cart value of INR 250/-\n\n'
                      '  Other T&Cs may apply\n\n'
                      '  Offer vaild till Jan 28, 2021 11.59 PM\n\n',
                      expandText: '+ More',
                      collapseText: 'Show Less',
                      maxLines: 1,
                      linkColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 180,
                      padding: EdgeInsets.all(10),
                      //margin: EdgeInsets.fromLTRB(20,10,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.yellow[50],
                            offset: new Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Account/Offer/img7.jpg',
                          ),
                          SizedBox(
                            width: 35.0,
                          ),
                          Text(
                            '150AXIS',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Get 15% discount using Axis Bank Delight D...',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Terms And Conditions',
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
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            // SizedBox(
            //   height: 1.0,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text:
                              'Use code PAYZAPP & get 15 % discount up to INR\n'
                              '50/- on orders above INR 250/-\n',
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
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ExpandableText(
                      ' \n'
                      'Terms & Conditions Apply\n\n'
                      '  Offer vaild only on Thursdays\n\n'
                      '  Offer vaild twice per user per month\n\n'
                      '  Offer vaild only on Katak Credit & Debit Cards\n\n'
                      '  Offer vaild twice per user during the offer period\n\n'
                      '  Offer vaild on a minimum cart value of INR 250/-\n\n'
                      '  Other T&Cs may apply\n\n'
                      '  Offer vaild till Jan 28, 2021 11.59 PM\n\n',
                      expandText: '+ More',
                      collapseText: 'Show Less',
                      maxLines: 1,
                      linkColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 180,
                      padding: EdgeInsets.all(10),
                      //margin: EdgeInsets.fromLTRB(20,10,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.yellow[50],
                            offset: new Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/Account/Offer/img6.jpg',
                          ),
                          SizedBox(
                            width: 35.0,
                          ),
                          Text(
                            'FCH50',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Get 15% cashback using Freecharge',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Terms And Conditions',
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
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),

            // SizedBox(
            //   height: 1.0,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Use code FCH50 & get 15 % discount up to INR\n'
                              '50/- on orders above INR 250/-\n',
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
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ExpandableText(
                      ' \n'
                      'Terms & Conditions Apply\n\n'
                      '  Offer vaild only on Thursdays\n\n'
                      '  Offer vaild twice per user per month\n\n'
                      '  Offer vaild only on Katak Credit & Debit Cards\n\n'
                      '  Offer vaild twice per user during the offer period\n\n'
                      '  Offer vaild on a minimum cart value of INR 250/-\n\n'
                      '  Other T&Cs may apply\n\n'
                      '  Offer vaild till Jan 28, 2021 11.59 PM\n\n',
                      expandText: '+ More',
                      collapseText: 'Show Less',
                      maxLines: 1,
                      linkColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.black26,
            ),
          ],
        ),
      ),
    );
  }
}
