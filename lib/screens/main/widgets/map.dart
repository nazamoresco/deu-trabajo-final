import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LaPlataMap extends StatelessWidget {
  final Completer<GoogleMapController> controller = Completer();

  static const CameraPosition initialPosition = CameraPosition(
    target: LatLng(-34.920252, -57.950477),
    zoom: 15,
  );

  LaPlataMap({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.none,
      initialCameraPosition: initialPosition,
      onMapCreated: (GoogleMapController controller) {
        this.controller.complete(controller);
      },
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
