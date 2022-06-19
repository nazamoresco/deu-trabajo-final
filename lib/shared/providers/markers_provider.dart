import 'package:deu/shared/classes/map_item.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapItemsProvider with ChangeNotifier {
  final List<MapItem> newsMarkers = [
    MapItem(
      link: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
      coordinates: const LatLng(-34.920252, -57.950477),
    ),
    MapItem(
      link:
          "https://www.lanacion.com.ar/buenos-aires/el-guardavidas-que-se-convirtio-en-heroe-durante-las-inundaciones-en-la-plata-nid1677770/",
      coordinates: const LatLng(-34.89813091711765, -57.972029805673664),
    ),
    MapItem(
      link:
          "https://www.lanacion.com.ar/buenos-aires/la-plata-volver-a-empezar-despues-de-la-tragedia-nid1676559/",
      coordinates: const LatLng(-34.94206247250326, -57.96784561864442),
    ),
    MapItem(
      link:
          "https://www.lanacion.com.ar/buenos-aires/todavia-lucha-para-reconstruir-su-vivienda-nid1676560/",
      coordinates: const LatLng(-34.90112055989658, -57.97047361432999),
    ),
  ];

  final List<MapItem> witnessMarkers = [
    MapItem(
      link: "https://www.youtube.com/watch?v=Gxw4ZX4WbDk",
      coordinates: const LatLng(-34.8888113, -57.9875128),
    ),
    MapItem(
      link: "https://www.youtube.com/watch?v=xMsulCuXbzE",
      coordinates: const LatLng(-34.9606474, -57.9633341),
    ),
    MapItem(
      link: "https://www.youtube.com/watch?v=LSkzBnja9v4",
      coordinates: const LatLng(-34.93706522797588, -57.952982109465545),
    ),
    MapItem(
      link: "https://www.youtube.com/watch?v=0RWeUS5wpJ4",
      coordinates: const LatLng(-34.959277454255414, -57.96310431390257),
    ),
    MapItem(
      link: "https://www.youtube.com/watch?v=m7w9Sx_55Qg",
      coordinates: const LatLng(-34.9435074, -57.9028404),
    ),
  ];

  List<MapItem> items(
    BuildContext context, {
    bool showNews = true,
    bool showWitness = true,
  }) {
    return [
      if (showNews) ...newsMarkers,
      if (showWitness) ...witnessMarkers,
    ];
  }
}
