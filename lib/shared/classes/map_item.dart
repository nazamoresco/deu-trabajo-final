import 'package:google_maps_flutter/google_maps_flutter.dart';

enum MapItemType { news, witness }

class MapItem {
  final String link;
  final LatLng coordinates;
  final MapItemType type;

  MapItem({required this.link, required this.coordinates, required this.type});
}
