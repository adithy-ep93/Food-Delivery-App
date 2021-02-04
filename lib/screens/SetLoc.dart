import 'package:FoodDelivery/Home/NavBar.dart';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoder/geocoder.dart';





class SecLoc extends StatefulWidget {

  SecLoc(): super();
  final String title = "Maps";
  
  @override
  _SecLocState createState() => _SecLocState();
}

class _SecLocState extends State<SecLoc> {

  String adrs1 ="";
  String adrs2 ="";
   String adrs3 ="";


  Completer<GoogleMapController>_controller = Completer();

  static const LatLng _center = const LatLng(9.9312, 76.2673);

  final Set<Marker>_markers={};

  LatLng _lastMapPosition =  _center;

  MapType _currentMapType = MapType.normal;
  
 
  _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
  }

void initState(){
  super.initState();
  getAddressLocation();
}

getAddressLocation() async{

final coordinates = new Coordinates(_lastMapPosition.latitude,_lastMapPosition.longitude);
var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);

setState(() {
 adrs1 = addresses.first.locality;
 adrs2 =addresses.first.subLocality;
 adrs3 =addresses.first.countryName;
});


//print("${first.featureName} : ${first.addressLine}");

}



  _onCameraMove(CameraPosition position){
    _lastMapPosition =position.target;
  }
  
  // _onMapTypeButtonPressed(){
  //   setState(() {
  //     _currentMapType = _currentMapType ==MapType.normal
  //      ? MapType.satellite 
  //      : MapType.normal;
  //   });
  // }


  _onAddMarkerButtonPressed(){
   setState(() {
      _markers.add(
        
      Marker(markerId: MarkerId(_lastMapPosition.toString()),
      position: _lastMapPosition,
      infoWindow: InfoWindow(
        
        title: 'This is a title',
        snippet: 'This is a Snippet'
        ),

        icon: BitmapDescriptor.defaultMarker,


      )
    );
   });
  }

  Widget button(Function function, IconData icon){
    return FloatingActionButton(
      heroTag: "btn",
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded ,
      backgroundColor:Color(0xff550d0e),
      child: Icon(icon,
      size: 36.0,),
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
            padding:EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * .55,
            color: Colors.white,
            child: SingleChildScrollView(
                          child: Column(
                
                children: [
                  Row(children: [],),

                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      IconButton(
          icon: Icon(Icons.location_on_outlined),
          iconSize: 30,
          color: Color(0xff550d0e),
          onPressed: (){
                
          },
                      ),

                      SizedBox(width:MediaQuery.of(context).size.width*.01 ,),

                      Text(adrs2,
                      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
                      ),),

                       SizedBox(width:MediaQuery.of(context).size.width*.3 ,),

                       FlatButton(onPressed: (){
                      }, child: Text('Change',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff550d0e),
                        fontWeight: FontWeight.bold

                      ),
                      ),
                      color:Color(0xffDfd7cc),
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),) ,
                        
                        ),

                    ],
                  ),


                  Row(
                    
                    children: [
                      
                     SizedBox(width:MediaQuery.of(context).size.width*.13 ,),
                      Text(adrs1,
                      style: TextStyle(
                       
          fontSize: 16
                      ),),
                      Text(" , "+adrs3,
                      style: TextStyle(
                       
          fontSize: 16
                      ),) ,
                  ],
                  ),


                  SizedBox(height:MediaQuery.of(context).size.height*.05 ,),


                  
                      FlatButton(
          
          color: Color(0xff550d0e),
           padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
           onPressed: (){
             Navigator.push(context, 
                                         MaterialPageRoute(builder:
                                          (BuildContext context )=>NavBar()));
           },
           
           child: Text('CONFIRM LOCATION',
           style: TextStyle(
               color:Color(0xffDfd7cc),
               fontWeight: FontWeight.bold,
               fontSize: 18
           ),
           ),

           shape: RoundedRectangleBorder(side: BorderSide(
                color: Color(0xff550d0e),
              ), borderRadius: BorderRadius.circular(5)),
           
           
                       ),
                 
                  

                ],
                
              ),
            ),
            
      ),
      ),
        ),



      body: Stack(children:<Widget> [

          GoogleMap
          (onMapCreated: _onMapCreated,
          initialCameraPosition:CameraPosition(
            target: _center,
            zoom: 11) ,
            mapType: _currentMapType,
            markers: _markers,
            onCameraMove:_onCameraMove,
          ),

          Padding(
            padding: EdgeInsets.all(16.0),
            child:Align(
              alignment: Alignment.topRight ,
              child: Column(children: <Widget>[

                // button(_onMapTypeButtonPressed, Icons.map),

                  SizedBox(height: MediaQuery.of(context).size.height*.05,),

                  button(_onAddMarkerButtonPressed, Icons.add_location),

              ],),
              )
          ),

      ],),


        
    );
  }
}