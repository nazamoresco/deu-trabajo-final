import 'package:flutter/material.dart';
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
        body: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    "La página se utiliza para poder ver los testimonios y noticias sobre la inundación en La Plata en 2013",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: provider.subtitleSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "En el sitio se muestra un mapa y unos botones de configuración general. Además, datos generales con respecto a la inundación.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: provider.subtitleSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Instrucciones para el uso del sitio web.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: provider.subtitleSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "- En el mapa se muestran unos marcadores en diferentes ubicaciones, estas ubicaciones representan el lugar donde ocurrió algun suceso contado en algún testimonio.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "- Cuando se seleccione algún punto en el mapa se mostrará la información del testimonio en la parte izquierda de la pantalla.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "- Si no existe ningún testimonio para ese lugar, se mostrará un mensaje indicando que no existe ningún testimonio para ese lugar.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "- Los puntos en el mapa estan categorizados como 'Testigos' y 'Noticias'.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "- Para poder ver todos los tipos, o uno en específico se puede filtrar lo que se muestra en el mapa con los botones que se encuentran \nen la parte superior derecha de la pantalla.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "- Si se desea incrementar el tamaño del texto de la página se puede hacer desde la configuración. A la izquierda de la pantalla se muestran unos botones \npara incrementar el tamaño del texto en general, de los subtítulos, o de los títulos.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Semantics(
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
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
