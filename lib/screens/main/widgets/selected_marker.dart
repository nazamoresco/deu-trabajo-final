import 'package:any_link_preview/any_link_preview.dart';
import 'package:deu/screens/main/widgets/map_item_preview.dart';
import 'package:deu/screens/main/widgets/video_player.dart';
import 'package:deu/shared/classes/map_item.dart';
import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/providers/map_selected_marker_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedMarker extends StatelessWidget {
  const SelectedMarker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<MapSelectedMarkerProvider, ConfigurationProvider>(
        builder: (context, selectedMarkerProvider, configurationProvider, _) {
      MapItem? item = selectedMarkerProvider.selectedItem;
      if (item == null) {
        return Container();
      }

      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
          child: Text(
            "Punto seleccionado",
            style: TextStyle(
              fontSize: configurationProvider.subtitleSize,
              color: configurationProvider.textColor,
            ),
          ),
        ),
        MapItemPreview(item),
      ]);
    });
  }
}
