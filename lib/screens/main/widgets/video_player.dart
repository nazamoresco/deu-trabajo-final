import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Video extends StatefulWidget {
  final String link;

  const Video(this.link, {Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  YoutubePlayerController? controller;

  @override
  void initState() {
    setState(() {
      controller = YoutubePlayerController(
        initialVideoId: YoutubePlayerController.convertUrlToId(widget.link) ?? '',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null) return Container();

    log(YoutubePlayerController.getThumbnail(
      videoId: YoutubePlayerController.convertUrlToId(widget.link) ?? "",
    ));

    return YoutubePlayerIFrame(
      controller: controller,
      aspectRatio: 16 / 9,
    );
  }
}
