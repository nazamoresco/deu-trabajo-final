import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/widgets/configuration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MapSidebar extends StatelessWidget {
  const MapSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, provider, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.water_drop_outlined, size: 64),
            iconColor: provider.textColor,
            title: Text(
              "440mm",
              style: TextStyle(fontSize: provider.subtitleSize),
            ),
            subtitle: Text(
              "Lluvia promedio: 40mm",
              style: TextStyle(fontSize: provider.textSize),
            ),
            textColor: provider.textColor,
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined, size: 64),
            iconColor: provider.textColor,
            title: Text(
              "89 fallecidos",
              style: TextStyle(fontSize: provider.subtitleSize),
            ),
            subtitle: Text(
              "Confirmados judicialmente",
              style: TextStyle(fontSize: provider.textSize),
            ),
            textColor: provider.textColor,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Configuracion",
                  style: TextStyle(
                    fontSize: provider.subtitleSize,
                    color: provider.textColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/configuracion");
                  },
                  icon: Icon(
                    Icons.settings,
                    color: provider.textColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Configuration(),
          ),
        ],
      ),
    );
  }
}
