import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoder/geocoder.dart';
import 'package:FoodDelivery/Account/My_Account/ManageAddressSub.dart';




class EditAddressMap extends StatefulWidget {

  EditAddressMap(): super();
  final String title = "Maps";
  
  @override
  _EditAddressMapState createState() => _EditAddressMapState();
}

bool _hasBeenPressed = false;
bool _hasBeenPressed1 = false;
bool _hasBeenPressed2 = false;

class _EditAddressMapState extends State<EditAddressMap> {

  final _controllerHouse = TextEditingController() ;
  final _controllerPlace = TextEditingController();

  String adrs1 ="";
  String adrs2 ="";
  String adrs3 ="";
  String house ="";
   String place ="";

   
  final _formKey = GlobalKey<FormState>();

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
      backgroundColor: Colors.orange[700],
      child: Icon(icon,
      size: 36.0,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        
        // appBar: AppBar(
        // title: Text(widget.title),
        // backgroundColor: Colors.orange[700],
        // ),


        bottomNavigationBar: SingleChildScrollView(
                  child: BottomAppBar(
                    
          child: Container(
            padding:EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * .5,
            color: Colors.white,
            child: SingleChildScrollView(
                          child: Column(
                
                children: [
                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      IconButton(
          icon: Icon(Icons.location_on_outlined),
          iconSize: 30,
          color: Colors.orange[700],
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
                        color: Colors.orange[700],
                        fontWeight: FontWeight.bold

                      ),
                      ),
                      color: Colors.grey[100],
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
                 
                  Form(
                     key: _formKey,
                    child:Column(
                    children: [

                      SizedBox(height: MediaQuery.of(context).size.height*.03,),
                      TextFormField(
                          
                        

              controller: _controllerHouse,
              
               decoration: InputDecoration(
                              labelText: 'EDIT HOUSE / FLAT/BLOCK NO',
                              
                               ),

              cursorColor: Colors.orange[700],
               validator: (value) {
                  if (value.isEmpty ) {
                  return 'Please enter Your House Name';
                    }
                  return null;
                    },
              

                      ),

                      SizedBox(height: MediaQuery.of(context).size.height*.01,),

                      TextFormField(

                controller: _controllerPlace,
               decoration: InputDecoration(
                              labelText: 'EDIT LAND MARK',
                              focusColor: Colors.orange
                               ),

              cursorColor: Colors.orange[700],

               validator: (value) {
                  if (value.isEmpty ) {
                  return 'Please enter Your Location';
                    }
                  return null;
                    },
              

                      ),

                       SizedBox(height: MediaQuery.of(context).size.height*.01,),

                      Row(
          children: [
              Text('Save As',
              style: TextStyle(
                color: Colors.grey
              ),),
          ],
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height*.02,),

                      Row(children: [
                       
                       
          GestureDetector(
              onTap: (){
                setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                        _hasBeenPressed1 = false;
                         _hasBeenPressed2 = false;
                        
                      });
              },
                child: Container(
                child: Row(
                  children: [
                    Icon(_hasBeenPressed?
                      Icons.home:Icons.home_outlined,
                      color: Colors.orange[700],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*.01,),
                    Text('Home'),
                  ],
                ),
              ),
          ),
           

          SizedBox(width: MediaQuery.of(context).size.width*.19,),

           GestureDetector(

               onTap: (){
                  setState(() {
                        _hasBeenPressed1 = !_hasBeenPressed1;
                        _hasBeenPressed = false;
                        _hasBeenPressed2 = false;
                        
                      });
               },
                                      child: Container(
                 child: Row(
                   children: [
                     Icon(_hasBeenPressed1?
                      Icons.work:Icons.work_outline,
                      color: Colors.orange[700],
          ),
          SizedBox(width: MediaQuery.of(context).size.width*.01,),
          Text('Work'),
                   ],
                 ),
               ),
           ),
           

           SizedBox(width: MediaQuery.of(context).size.width*.19,),

              GestureDetector(
                onTap: (){
                  setState(() {
                         _hasBeenPressed2 = !_hasBeenPressed2;
                        _hasBeenPressed = false;
                        _hasBeenPressed1 = false;
                        
                      });

                },
                                        child: Container(
                  child: Row(
                    children: [
                      Icon( _hasBeenPressed2?
                      Icons.location_on:Icons.location_on_outlined,
                      color: Colors.orange[700],
          ),

           SizedBox(width: MediaQuery.of(context).size.width*.01,),
          Text('Other'),
                    ],
                  ),
                ),
              ),
          
                      ],
                      ),

                       SizedBox(height: MediaQuery.of(context).size.height*.04,),

                      FlatButton(
          
          color: Colors.orange[700],
           padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
           onPressed: (){

                 if (_formKey.currentState.validate()) {

                    setState(() {
                  house = _controllerHouse.text;
                  place =_controllerPlace.text;
                  
                });
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => 
              ManageAddressSub(
                text: house,
                text1:place,
              
              ),
                ));
                 
                    }

               

           },
           
           child: Text('Enter House / Flat / Block No',
           style: TextStyle(
               color:Colors.white,
           ),
           ),

           shape: RoundedRectangleBorder(side: BorderSide(
                color: Colors.orange[700],
              ), borderRadius: BorderRadius.circular(5)),
           
           
                       ),
                    ],
                  ),),

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

                  SizedBox(height: 16.0,),

                  button(_onAddMarkerButtonPressed, Icons.add_location),

              ],),
              )
          ),

      ],),


        );
    
  }
}