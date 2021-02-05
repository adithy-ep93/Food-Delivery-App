import 'package:FoodDelivery/Home/NavBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoder/geocoder.dart';

class MapSelectThisLocation extends StatefulWidget {
  MapSelectThisLocation() : super();
  final String title = "Maps";

  @override
  _MapSelectThisLocationState createState() => _MapSelectThisLocationState();
}

class _MapSelectThisLocationState extends State<MapSelectThisLocation> {
  bool valuefirst = false;

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
                  Row(
                    children: [
                      Container(
                        width: 360,
                        padding: EdgeInsets.all(10),
                        // width: 320,
                        color: Colors.pink[50],
                        // padding: EdgeInsets.fromLTRB(0,10,0,10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                // IconButton(
                                //   icon: FaIcon(FontAwesomeIcons.bullhorn),
                                //   onPressed: () {},
                                //   iconSize: 20.0,
                                //   color: Colors.orange[900],
                                // ),
                                // SizedBox(
                                //   width: MediaQuery.of(context).size.width * .01,
                                // ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text(
                                          'Please call the store to check if it is open,',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02,
                                        ),
                                        Text(
                                          'before placing your order.',
                                          style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 13, color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .08,
                                ),
                                IconButton(
                                  icon: FaIcon(FontAwesomeIcons.bullhorn),
                                  onPressed: () {},
                                  iconSize: 20.0,
                                  color: Color(0xff550d0e),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .01,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Text(
                          'STORE LOCATION',
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
                        icon: Icon(Icons.store),
                        iconSize: 30,
                        color: Colors.black87,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .01,
                      ),
                      Text(
                        'SM STORE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * .01,
                      // ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          'University Of Kerala Senate House Campus,\n'
                          'Connemara Market, Palayam,TVM',
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
                          labelText: "STORE NAME",
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
                        'Save this store for future use',
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
}
