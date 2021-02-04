import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class Swiggy_Super_Faqs extends StatefulWidget {
  @override
  _Swiggy_Super_FaqsState createState() => _Swiggy_Super_FaqsState();
}

class _Swiggy_Super_FaqsState extends State<Swiggy_Super_Faqs> {
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
                        "Yummy SUPER FAQS ",
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
                header: Text(
                  'What is Yummy SUPER?',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
                header: Text(
                  'What are the benefits of subscribing to the\nprogram?',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
                header: Text(
                  'What are all the charges covered under free\ndelivery',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
                header: Text(
                  'Is there a limit on the number of SUPER\n'
                  'order I can place while subscribed?',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
                header: Text(
                  'Why have you stopped selling 3 month\nsubscriptions?',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
                header: Text(
                  'Can I avail my SUPER benefits in cities other\n'
                  'than where I made the purchase?',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
                header: Text(
                  'I have a query related to donations',
                  style: TextStyle(
                    fontSize: 16.0,
                    //color: Colors.black,
                    //fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                expanded: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\n'
                    'All donations related queries are being handled by\n'
                    'our donations partner.Please drop us an email \n'
                    'and you\'ll hear back from the team within 24\nhours.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
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
