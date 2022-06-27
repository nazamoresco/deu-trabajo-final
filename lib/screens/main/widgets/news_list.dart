import 'package:deu/screens/main/widgets/map_item_preview.dart';
import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/providers/markers_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ConfigurationProvider, MapItemsProvider>(
      builder: (context, configProvider, mapItemsProvider, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Noticias",
            style: TextStyle(
              fontSize: configProvider.subtitleSize,
              color: configProvider.textColor,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: mapItemsProvider.newsMarkers.length,
            itemBuilder: (context, index) =>
                MapItemPreview(mapItemsProvider.newsMarkers[index]),
          ),
        ],
      ),
    );
  }
}
