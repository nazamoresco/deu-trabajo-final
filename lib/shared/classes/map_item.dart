import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapItem {
  final String link;
  final LatLng coordinates;
  final String title;

  MapItem({
    required this.link,
    required this.coordinates,
    required this.title,
  });
}
