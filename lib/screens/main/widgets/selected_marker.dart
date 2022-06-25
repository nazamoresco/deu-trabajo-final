import 'package:any_link_preview/any_link_preview.dart';
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

      bool isYoutubeLink = RegExp(r"youtube").hasMatch(item.link);

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isYoutubeLink
                ? Video(item.link, key: UniqueKey())
                : AnyLinkPreview(
                    key: UniqueKey(),
                    link: item.link,
                    backgroundColor: Colors.lightBlue[50],
                    placeholderWidget: Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.lightBlue[200],
                      ),
                    ),
                    borderRadius: 4,
                  ),
          ],
        ),
      );
    });
  }
}
