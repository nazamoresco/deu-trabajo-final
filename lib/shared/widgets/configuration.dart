import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/widgets/text_size_input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Configuration extends StatelessWidget {
  const Configuration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, ConfigurationProvider provider, _) => Column(
        children: [
          TextSizeInput(
            label: "texto",
            value: provider.textSize,
            decrease: provider.decreaseTextSize,
            increase: provider.increaseTextSize,
          ),
          TextSizeInput(
            label: "subtítulo",
            value: provider.subtitleSize,
            decrease: provider.decreaseSubtitleSize,
            increase: provider.increaseSubtitleSize,
          ),
          TextSizeInput(
            label: "título",
            value: provider.titleSize,
            decrease: provider.decreaseTitleSize,
            increase: provider.increaseTitleSize,
          ),
        ],
      ),
    );
  }
}
