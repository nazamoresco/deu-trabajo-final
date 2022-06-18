import 'dart:async';
import 'dart:developer';

import 'package:deu/screens/main/classes/map_configuration.dart';
import 'package:deu/shared/classes/map_item.dart';
import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/providers/map_selected_marker_provider.dart';
import 'package:deu/shared/providers/markers_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class LaPlataMap extends StatelessWidget {
  final Completer<GoogleMapController> controllerCompleter = Completer();

  static const CameraPosition initialPosition = CameraPosition(
    target: LatLng(-34.920252, -57.950477),
    zoom: 15,
  );

  LaPlataMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(builder: (context, provider, _) {
      List<MapItem> items = Provider.of<MapItemsProvider>(context).items(
        context,
        showNews: provider.showNews,
        showWitness: provider.showWitness,
      );

      return GoogleMap(
        mapType: MapType.none,
        initialCameraPosition: initialPosition,
        onMapCreated: (GoogleMapController controller) {
          controllerCompleter.complete(controller);
          controller.setMapStyle(MapConfiguration.style);
        },
        markers: items
            .map(
              (MapItem item) => Marker(
                markerId: MarkerId(item.title),
                position: item.coordinates,
                icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueYellow,
                ),
                onTap: () {
                  Provider.of<MapSelectedMarkerProvider>(context, listen: false)
                      .selectedItem = item;
                },
              ),
            )
            .toSet(),
      );
    });
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
