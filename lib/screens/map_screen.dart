

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import'package:flutter/foundation.dart';


class  MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;
  final bool isSelecting;

  MapScreen({this.initialLocation = const PlaceLocation(latitude: 8.5241, longitude: 76.9366),this.isSelecting = false});

  @override
  _State createState() => _State();
}

class _State extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:AppBar(
            title:Text('Map')
          ) ,
          body: GoogleMap(
            initialCameraPosition: CameraPosition(
            target: LatLng(
              widget.initialLocation.latitude,
               widget.initialLocation.longitude
               ),
               zoom: 13,
               )
               ),
    );
  }
}

class PlaceLocation{
    final double latitude;
    final double longitude;
    final String address;


    const PlaceLocation({
      @required this.latitude,
      @required this.longitude,
      this.address
    });
}