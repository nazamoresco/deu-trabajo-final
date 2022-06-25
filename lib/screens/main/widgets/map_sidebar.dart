import 'package:deu/screens/main/widgets/selected_marker.dart';
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
          const SelectedMarker(),
          ListTile(
            leading: const Icon(Icons.water_drop_outlined, size: 64),
            iconColor: provider.textColor,
            title: SelectableText(
              "440mm",
              style: TextStyle(fontSize: provider.subtitleSize),
            ),
            subtitle: SelectableText(
              "Lluvia promedio: 40mm",
              style: TextStyle(fontSize: provider.textSize),
            ),
            textColor: provider.textColor,
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined, size: 64),
            iconColor: provider.textColor,
            title: SelectableText(
              "89 fallecidos",
              style: TextStyle(fontSize: provider.subtitleSize),
            ),
            subtitle: SelectableText(
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
                SelectableText(
                  "Configuracion",
                  style: TextStyle(
                    fontSize: provider.subtitleSize,
                    color: provider.textColor,
                  ),
                ),
                Semantics(
                  button: true,
                  focusable: true,
                  label: "Ïr a la página de configuracion",
                  child: IconButton(
                    onPressed: () {
                      if (provider.helpEnabled) displayHelp(context, provider);
                      Navigator.of(context).pushNamed("/configuracion");
                    },
                    icon: Icon(
                      Icons.settings,
                      color: provider.textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16, left: 16),
            child: Configuration(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectableText(
                  "Presentacion",
                  style: TextStyle(
                    fontSize: provider.subtitleSize,
                    color: provider.textColor,
                  ),
                ),
                Semantics(
                  focusable: true,
                  button: true,
                  label: "Ir la página de presentacion",
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/initial");
                    },
                    icon: Icon(
                      Icons.start,
                      color: provider.textColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void displayHelp(context, provider) {
    final snackBar = SnackBar(
      backgroundColor: Colors.lightBlue[50],
      padding: const EdgeInsets.all(16.0),
      content: SizedBox(
        height: 200.0,
        child: Row(
          children: [
            Icon(
              Icons.help_outline,
              color: provider.textColor,
            ),
            SelectableText(
              'En esta pagina se puede configurar distintas propiedades de la aplicacion, como tamaño de fuente, contraste, etc!',
              style: TextStyle(
                color: provider.textColor,
                fontSize: provider.textSize,
              ),
            )
          ],
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
