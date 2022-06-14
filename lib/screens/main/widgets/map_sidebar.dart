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
                    if (provider.helpEnabled) displayHelp(context, provider);
                    Navigator.of(context).pushNamed("/configuracion");
                  },
                  icon: Icon(
                    Icons.settings,
                    color: provider.textColor,
                  ),
                ),
                Text(
                  "Ayuda",
                  style: TextStyle(
                    fontSize: provider.subtitleSize,
                    color: provider.textColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/initial");
                  },
                  icon: Icon(
                    Icons.help,
                    color: provider.textColor,
                  ),
                ),
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

  void displayHelp(context, provider) {
    final snackBar = SnackBar(
      backgroundColor: Colors.lightBlue[50],
      padding: const EdgeInsets.all(8.0),
      content: Row(
        children: [
          Icon(
            Icons.help_outline,
            color: provider.textColor,
          ),
          Text(
            'En esta pagina se puede configurar distintas propiedades de la aplicacion, como tamaño de fuente, contraste, etc!',
            style: TextStyle(
              color: provider.textColor,
              fontSize: provider.textSize,
            ),
          )
        ],
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
