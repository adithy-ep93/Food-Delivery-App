import 'package:FoodDelivery/Home/Account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Signup2 extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Signup2> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String name, email;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Color(0xff550d0e)),
        // Set this height
            title: Text('SIGNUP',
            style: TextStyle(color: Color(0xff550d0e)),),

        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(20.0),
          child: new Form(
            key: _key,
            autovalidate: _validate,
            child: getFormUI(),
          ),
        ),
      ),
    );
  }

  Widget getFormUI() {
    return new Column(
      children: <Widget>[
        SizedBox(
          height: 25.0,
        ),

        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "10 digit mobile number",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 10.0,
        ),

        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "+91 9562854701 ",
                style: TextStyle(
                  fontSize: 15.0,
                  //fontWeight: FontWeight.bold,
                  //decoration: TextDecoration.underline,
                  // decorationColor: Colors.orange[900],
                ),
              ),
            ),
          ],
        ),

        Divider(),
        SizedBox(
          height: 25.0,
        ),

        new TextFormField(
            decoration: new InputDecoration(
              hintText: 'EMAIL ADDRESS',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                //  when the TextFormField in unfocused
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orange[700]),
                //  when the TextFormField in focused
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            //maxLength: 32,
            validator: validateEmail,
            onSaved: (String val) {
              email = val;
            }),

        SizedBox(
          height: 25.0,
        ),

        new TextFormField(
          decoration: new InputDecoration(
            hintText: 'NAME',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              //  when the TextFormField in unfocused
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.orange[700]),
              //  when the TextFormField in focused
            ),
          ),
          // maxLength: 32,
          validator: validateName,
          onSaved: (String val) {
            name = val;
          },
        ),

        // new TextFormField(
        //     decoration: new InputDecoration(hintText: 'Mobile Number'),
        //     keyboardType: TextInputType.phone,
        //     maxLength: 10,
        //     validator: validateMobile,
        //     onSaved: (String val) {
        //       mobile = val;
        //     }),

        new SizedBox(height: 15.0),

        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                    text: 'By creating an account, I accept the',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Terms And Conditions',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            })
                    ]),
              ),
            ),
          ],
        ),
        // Divider(),

        SizedBox(
          height: 140.0,
        ),
        new RaisedButton(
          onPressed: (){
            _submit();
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => 
              Account(
          
              ),
                ));
            
            
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold,
                  color: Color(0xffDfd7cc)),
                ),
              ),
            ],
          ),
          color: Color(0xff550d0e),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
          padding: EdgeInsets.fromLTRB(20, 15, 25, 20),
        ),
      ],
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  // String validateMobile(String value) {
  //   String patttern = r'(^[0-9]*$)';
  //   RegExp regExp = new RegExp(patttern);
  //   if (value.length == 0) {
  //     return "Mobile is Required";
  //   } else if(value.length != 10){
  //     return "Mobile number must 10 digits";
  //   }else if (!regExp.hasMatch(value)) {
  //     return "Mobile Number must be digits";
  //   }
  //   return null;
  // }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Please provide a valid email address(abc@xyz.pqr)";
    } else {
      return null;
    }
  }

  _submit() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}
