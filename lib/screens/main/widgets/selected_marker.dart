import 'dart:developer';

import 'package:deu/screens/main/widgets/video_player.dart';
import 'package:deu/shared/classes/map_item.dart';
import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/providers/map_selected_marker_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.lightBlue[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: TextStyle(
                  fontSize: configurationProvider.subtitleSize,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Video(key: UniqueKey(), item.link)
            ],
          ),
        ),
      );
    });
  }
}
