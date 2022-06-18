import 'package:deu/shared/classes/map_item.dart';
import 'package:flutter/material.dart';

class MapSelectedMarkerProvider with ChangeNotifier {
  MapItem? _selectedItem;

  MapItem? get selectedItem => _selectedItem;
  set selectedItem(MapItem? item) {
    _selectedItem = item;
    notifyListeners();
  }
}
