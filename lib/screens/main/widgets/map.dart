import 'dart:async';
import 'dart:developer';

import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class LaPlataMap extends StatelessWidget {
  final Completer<GoogleMapController> controllerCompleter = Completer();

  static const CameraPosition initialPosition = CameraPosition(
    target: LatLng(-34.920252, -57.950477),
    zoom: 15,
  );

  final Set<Marker> witnessMarkers = [
    Marker(
        markerId: MarkerId("testimonio_1"),
        position: LatLng(-34.920252, -57.950477),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          log("Mostrar modal");
        }
        // icon
        ),
  ].toSet();

  final Set<Marker> newsMarkers = [
    Marker(
        markerId: MarkerId("testimonio_2"),
        position: LatLng(-34.910152, -57.950477),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueYellow,
        ),
        onTap: () {
          log("Mostrar news");
        }
        // icon
        ),
  ].toSet();

  Set<Marker> markers(ConfigurationProvider provider) {
    // return witnessMarkers;
    return [
      if (provider.showNews) ...newsMarkers,
      if (provider.showWitness) ...witnessMarkers,
    ].toSet();
  }

  LaPlataMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, provider, _) => GoogleMap(
        mapType: MapType.none,
        initialCameraPosition: initialPosition,
        onMapCreated: (GoogleMapController controller) {
          controllerCompleter.complete(controller);
          controller.setMapStyle(
            '''
              [
                {
                  "elementType": "labels",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                },
                {
                  "featureType": "administrative",
                  "elementType": "geometry",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                },
                {
                  "featureType": "administrative.land_parcel",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                },
                {
                  "featureType": "administrative.neighborhood",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                },
                {
                  "featureType": "poi",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                },
                {
                  "featureType": "road",
                  "elementType": "labels.icon",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                },
                {
                  "featureType": "transit",
                  "stylers": [
                    {
                      "visibility": "off"
                    }
                  ]
                }
              ]
            ''',
          );
        },
        markers: markers(provider),
      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
