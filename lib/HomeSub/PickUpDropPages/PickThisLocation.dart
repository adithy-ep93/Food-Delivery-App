import 'package:FoodDelivery/Home/NavBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoder/geocoder.dart';

class PickThisLocation extends StatefulWidget {
  PickThisLocation() : super();
  final String title = "Maps";

  @override
  _PickThisLocationState createState() => _PickThisLocationState();
}

bool _hasBeenPressed = false;
bool _hasBeenPressed1 = false;
bool _hasBeenPressed2 = false;
class _PickThisLocationState extends State<PickThisLocation> {
  bool valuefirst = false;
  bool valuefirst1 = false;

  String adrs1 = "";
  String adrs2 = "";
  String adrs3 = "";

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(9.9312, 76.2673);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void initState() {
    super.initState();
    getAddressLocation();
  }

  getAddressLocation() async {
    final coordinates =
        new Coordinates(_lastMapPosition.latitude, _lastMapPosition.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);

    setState(() {
      adrs1 = addresses.first.locality;
      adrs2 = addresses.first.subLocality;
      adrs3 = addresses.first.countryName;
    });

//print("${first.featureName} : ${first.addressLine}");
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  // _onMapTypeButtonPressed(){
  //   setState(() {
  //     _currentMapType = _currentMapType ==MapType.normal
  //      ? MapType.satellite
  //      : MapType.normal;
  //   });
  // }

  _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow:
            InfoWindow(title: 'This is a title', snippet: 'This is a Snippet'),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
      heroTag: "btn",
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: Color(0xff550d0e),
      child: Icon(
        icon,
        size: 36.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text(widget.title),
      // backgroundColor: Colors.orange[700],
      // ),

      bottomNavigationBar: SingleChildScrollView(
        child: BottomAppBar(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            height: MediaQuery.of(context).size.height * .5,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                  Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Text(
                          'STORE PICKUP LOCATION',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.location_on),
                        iconSize: 30,
                        color: Colors.black87,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .01,
                      ),
                      Text(
                        'Pathanmathitta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * .01,
                      // ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          'Kerala 689775, India,\n',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                    child: TextFormField(
                      //controller: passTextController,
                      decoration: new InputDecoration(
                          labelText:
                              "COMPLETE THIS ADDRESS (HOUSE NO., LANE NO, ETC,)",
                          hintStyle:
                              TextStyle(fontSize: 12.0, color: Colors.black87),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            //  when the TextFormField in unfocused
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff550d0e),
                            ),
                            //  when the TextFormField in focused
                          ),
                          border: UnderlineInputBorder()),
                      keyboardType: TextInputType.text,
                      //obscureText: true,
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                    child: TextFormField(
                      //controller: passTextController,
                      decoration: new InputDecoration(
                          labelText:
                              "LANDMARK, ADDITIONAL INFO, ETC, (OPTIONAL)",
                          hintStyle:
                              TextStyle(fontSize: 12.0, color: Colors.black87),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            //  when the TextFormField in unfocused
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff550d0e),
                            ),
                            //  when the TextFormField in focused
                          ),
                          border: UnderlineInputBorder()),
                      keyboardType: TextInputType.text,
                      //obscureText: true,
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),



                  Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Flexible(
                          child: new TextFormField(
                            //controller: passTextController,
                            decoration: new InputDecoration(
                                labelText: "CONTACT NUMBER",
                                hintStyle: TextStyle(
                                    fontSize: 10.0, color: Colors.black87),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  //  when the TextFormField in unfocused
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff550d0e),
                                  ),
                                  //  when the TextFormField in focused
                                ),
                                border: UnderlineInputBorder()),
                            keyboardType: TextInputType.text,
                            //obscureText: true,
                          ),
                        ),
                        //SizedBox(width: 20.0,),
                        new Flexible(
                          child: new TextFormField(
                            //controller: passTextController,
                            decoration: new InputDecoration(
                                labelText: "CONTACT NAME",
                                hintStyle: TextStyle(
                                    fontSize: 10.0, color: Colors.black87),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  //  when the TextFormField in unfocused
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff550d0e),
                                  ),
                                  //  when the TextFormField in focused
                                ),
                                border: UnderlineInputBorder()),
                            keyboardType: TextInputType.text,
                            //obscureText: true,
                          ),
                        ),
                        //SizedBox(width: 20.0,),
                        new Flexible(
                          child: new IconButton(
                            icon: Icon(Icons.contact_phone),
                            onPressed: () {},
                            iconSize: 30.0,
                            color: Color(0xff550d0e),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),

                   Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color(0xff550d0e),
                        value: this.valuefirst1,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefirst1 = value;
                          });
                        },
                      ),
                      Text(
                        'Save tracking link via SMS to this number',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),

                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color(0xff550d0e),
                        value: this.valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefirst = value;
                          });
                        },
                      ),
                      Text(
                        'Add to saved addresss',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                                      SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                   Container(                    margin: const EdgeInsets.only(left: 35.0, right: 40.0),
                     child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _hasBeenPressed = !_hasBeenPressed;
                                    _hasBeenPressed1 = false;
                                    _hasBeenPressed2 = false;
                                  });
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        _hasBeenPressed
                                            ? Icons.home
                                            : Icons.home_outlined,
                                         color: Color(0xff550d0e)
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            .01,
                                      ),
                                      Text('Home'),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _hasBeenPressed1 = !_hasBeenPressed1;
                                    _hasBeenPressed = false;
                                    _hasBeenPressed2 = false;
                                  });
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        _hasBeenPressed1
                                            ? Icons.work
                                            : Icons.work_outline,
                                         color: Color(0xff550d0e)
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            .01,
                                      ),
                                      Text('Work'),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _hasBeenPressed2 = !_hasBeenPressed2;
                                    _hasBeenPressed = false;
                                    _hasBeenPressed1 = false;
                                  });
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        _hasBeenPressed2
                                            ? Icons.location_on
                                            : Icons.location_on_outlined,
                                        color: Color(0xff550d0e)
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            .01,
                                      ),
                                      Text('Other'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                   ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 8, 15, 5),
                    child: RaisedButton(
                      onPressed: () {
                       showAlertDialog(context);
                        },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "SELECT THIS LOCATION",
                              style: TextStyle(
                                color: Color(0xffDfd7cc),
                                //color: Color(0xff550d0e),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
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
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(target: _center, zoom: 11),
            mapType: _currentMapType,
            markers: _markers,
            onCameraMove: _onCameraMove,
          ),
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    // button(_onMapTypeButtonPressed, Icons.map),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),

                    button(_onAddMarkerButtonPressed, Icons.add_location),
                  ],
                ),
              )),
        ],
      ),
    );
  }


  showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("CLEAR CART",style: TextStyle(    color: Color(0xff550d0e),fontWeight: FontWeight.bold,),),
    onPressed:  () { Navigator.pop(context);},
  );
  Widget continueButton = FlatButton(
    child: Text("OK",style: TextStyle(    color: Color(0xff550d0e),fontWeight: FontWeight.bold,),),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    insetPadding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0))),
         contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),

    title:  Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child:  Text('Genie isn\'t here yet',
              style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),),
                          ),
             SizedBox(height: 10.0,),
          ],
        ),
           
    content: Container(
      //margin: const EdgeInsets.only(left: 15.0, right: 10.0),
          
            //padding: EdgeInsets.all(5),
            
            //padding: EdgeInsets.fromLTRB(5,0,5,0),
            padding: EdgeInsets.all(5),
           height: 48,
            width: 280,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('We will make our services available in this\n'
                    'area soon.Stay tuned!',style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black87,
                          ),),
                  ],
                ),
                //SizedBox(height: 10.0,),
                
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
}