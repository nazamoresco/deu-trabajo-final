import 'package:deu/shared/classes/map_item.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapItemsProvider with ChangeNotifier {
  final List<MapItem> newsMarkers = [
    MapItem(
      title: "Rick rolled",
      link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
      coordinates: const LatLng(-34.920252, -57.950477),
    )
  ];

  final List<MapItem> witnessMarkers = [
    MapItem(
      title: "Santiago Suarez - 8 y 517 Ringuelet",
      link: "https://www.youtube.com/watch?v=Gxw4ZX4WbDk",
      coordinates: const LatLng(-34.8888113, -57.9875128),
    ),
    MapItem(
      title: "Mariela Lujan - 71 y 139 Los Hornos",
      link: "https://www.youtube.com/watch?v=xMsulCuXbzE",
      coordinates: const LatLng(-34.9606474, -57.9633341),
    ),
    MapItem(
      title: "Gabriela Benítez - En una escuela 29 y 66. Sur de la Plata",
      link: "https://www.youtube.com/watch?v=LSkzBnja9v4",
      coordinates: const LatLng(-34.93706522797588, -57.952982109465545),
    ),
    MapItem(
      title: "Nancy - 70 e/ 138 y 139 Los hornos",
      link: "https://www.youtube.com/watch?v=0RWeUS5wpJ4",
      coordinates: const LatLng(-34.959277454255414, -57.96310431390257),
    ),
    MapItem(
      title: "Estefanía Cárcamo - 95 y 4",
      link: "https://www.youtube.com/watch?v=m7w9Sx_55Qg",
      coordinates: const LatLng(-34.9435074, -57.9028404),
    ),
  ];

  List<MapItem> items(
    BuildContext context, {
    bool showNews: true,
    bool showWitness: true,
  }) {
    return [
      if (showNews) ...newsMarkers,
      if (showWitness) ...witnessMarkers,
    ];
  }
}
