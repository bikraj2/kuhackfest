import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:cupertino_icons/cupertino_icons.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Completer<GoogleMapController> _controller = Completer();

  final List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(27.700769, 85.300140),
        infoWindow: InfoWindow(title: 'adress 1')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(27.6221, 85.54281),
        infoWindow: InfoWindow(title: 'adress 2')),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(27.541967, 85.334297),
        infoWindow: InfoWindow(title: 'adress 2')),
    Marker(
        markerId: MarkerId('4'),
        position: LatLng(27.6221,85.54281),
        infoWindow: InfoWindow(title: 'adress 3')),

    Marker(
        markerId: MarkerId('5'),
        position: LatLng(27.619817, 85.541435),
        infoWindow: InfoWindow(title: 'adress 4')),
    
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(27.6221,85.54281),
        infoWindow: InfoWindow(title: 'adress 5')),


    
  ];

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.700769, 85.300140),
    zoom: 12,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.normal,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          myLocationButtonEnabled: false,
          myLocationEnabled: true,
          trafficEnabled: false,
          rotateGesturesEnabled: true,
          buildingsEnabled: true,
          markers: Set<Marker>.of(_marker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.center_focus_strong),
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(target: LatLng(27.6221, 85.54281), zoom: 15)));
              setState(() {
                 
              });
        },
      ),
    );
  }
}

// List<Marker> list = const [
//   Marker(
//       markerId: MarkerId('SomeId'),
//       position: LatLng(33.6844, 73.0479),
//       infoWindow: InfoWindow(
//           title: 'The title of the marker'
//       )
//   ),
//   Marker(
//       markerId: MarkerId('SomeId'),
//       position: LatLng( 33.738045,73.084488),
//       infoWindow: InfoWindow(
//           title: 'e-11 islamabd'
//       )
//   ),
// ];
//
// @override
// void initState() {
//   // TODO: implement initState
//   super.initState();
//   _markers.addAll(
//       list);
// }
