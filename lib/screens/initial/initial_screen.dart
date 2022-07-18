import 'package:deu/screens/main/widgets/map_item_preview.dart';
import 'package:deu/screens/main/widgets/property_display_toggle.dart';
import 'package:deu/shared/classes/map_item.dart';
import 'package:deu/shared/widgets/configuration.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../shared/providers/configuration_provider.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
        builder: (context, ConfigurationProvider provider, _) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: Text(
            "Inundaciones La plata - Mapa de Testimonios",
            style: TextStyle(
              color: provider.textColor,
              fontSize: provider.titleSize,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    "Acceda a testimonios, noticias y datos estadísticos sobre la inundación de 2013 en La Plata.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: provider.subtitleSize,
                      color: provider.textColor,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    "Guia de uso:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: provider.subtitleSize,
                      color: provider.textColor,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 10,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: GridView.count(
                    padding: const EdgeInsets.all(64.0),
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.red,
                        size: provider.titleSize,
                      ),
                      Center(
                        child: Text(
                          "En el mapa, se muestran marcadores en diferentes ubicaciones, estas ubicaciones representan el lugar donde ocurrió algun suceso contado en una noticio o en un testimonio.",
                          style: TextStyle(
                            fontSize: provider.textSize,
                            color: provider.textColor,
                          ),
                        ),
                      ),
                      MapItemPreview(
                        MapItem(
                          type: MapItemType.news,
                          link:
                              "https://www.lanacion.com.ar/buenos-aires/el-guardavidas-que-se-convirtio-en-heroe-durante-las-inundaciones-en-la-plata-nid1677770/",
                          coordinates: const LatLng(
                            -34.89813091711765,
                            -57.972029805673664,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Cuando se seleccione algún punto en el mapa se mostrará la información del testimonio en la parte izquierda de la pantalla.",
                          style: TextStyle(
                            fontSize: provider.textSize,
                            color: provider.textColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: PropertyDisplayToggle(
                              onPressed: () {},
                              icon: Icons.waves_outlined,
                              label: "Cauces",
                              textColor: Colors.red,
                              enabled: false,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: PropertyDisplayToggle(
                              onPressed: () {},
                              icon: Icons.campaign_outlined,
                              label: "Testigos",
                              textColor: Colors.blue[800]!,
                              enabled: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: PropertyDisplayToggle(
                              onPressed: () {},
                              icon: Icons.newspaper_outlined,
                              label: "Noticias",
                              textColor: Colors.black,
                              enabled: false,
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          "Los puntos en el mapa estan categorizados como 'Testigos' y 'Noticias'. Para poder ver todos los tipos, o uno en específico se puede filtrar lo que se muestra en el mapa con los botones que se encuentran \nen la parte superior derecha de la pantalla. Para tener otra alternativa a los puntos del mapa, las noticias y los testimonios tambien se muestran en el sidebar izquierdo de la pantalla.",
                          style: TextStyle(
                            fontSize: provider.textSize,
                            color: provider.textColor,
                          ),
                        ),
                      ),
                      const Center(
                        child: Expanded(
                          child: SingleChildScrollView(child: Configuration()),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Si se desea incrementar el tamaño del texto de la página se puede hacer desde la configuración. A la izquierda de la pantalla se muestran unos botones \npara incrementar el tamaño del texto en general, de los subtítulos, o de los títulos.",
                          style: TextStyle(
                            fontSize: provider.textSize,
                            color: provider.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Semantics(
                    focusable: true,
                    button: true,
                    label: "Ir a la página principal",
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed("/principal"),
                      icon: Icon(
                        Icons.home_outlined,
                        color: provider.textColor,
                        size: provider.titleSize,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
