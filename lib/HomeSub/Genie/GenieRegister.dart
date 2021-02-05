import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenieRegister extends StatefulWidget {
  @override
  _GenieRegisterState createState() => _GenieRegisterState();
}

class _GenieRegisterState extends State<GenieRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.close),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                ),
                Icon(
                  FontAwesomeIcons.pizzaSlice,
                  color: Colors.white,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                Text(
                  'Genie',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .38,
                ),
                Text(
                  'for bussiness',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset('assets/Home/Genie/gi12.jpg'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Text(
                      ' Deliver instantly to more customers',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'with Genie bussiness link',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    Image.asset('assets/Home/Genie/gi13.jpg'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Container(    margin: const EdgeInsets.only(left: 15.0, right: 15.0),                       
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.fromLTRB(0, 5, 00, 5),
                        color: Color(0xff550d0e),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      GenieRegister()));
                        },
                        child: Container(
                         // margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Icon(
                                Icons.play_arrow_rounded,
                                color: Color(0xffDfd7cc),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .01,
                              ),
                              Text(
                                'Watch this video to know more',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffDfd7cc)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                  ],
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
              color: Color(0xff550d0e),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GenieRegister()));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Text(
                  'GET STARTED ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffDfd7cc)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
          ],
        ),
      ),
    );
  }
}
