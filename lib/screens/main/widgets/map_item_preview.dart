import 'package:any_link_preview/any_link_preview.dart';
import 'package:deu/screens/main/widgets/video_player.dart';
import 'package:deu/shared/classes/map_item.dart';
import 'package:flutter/material.dart';

class MapItemPreview extends StatelessWidget {
  final MapItem item;

  const MapItemPreview(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isYoutubeLink = RegExp(r"youtube").hasMatch(item.link);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: isYoutubeLink
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
    );
  }
}
