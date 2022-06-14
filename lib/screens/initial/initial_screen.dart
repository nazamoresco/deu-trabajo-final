import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                  SizedBox(height: 25),
                  Text(
                    "La página se utiliza para poder ver los testimonios de la inundación en La Plata en 2013",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: provider.subtitleSize,
                      color: provider.textColor,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Cuando seleccionas un punto en el mapa se mostrará la información del testimonio en la parte izquierda de la pantalla.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Si no existe ningún testimonio para ese lugar, se mostrará un mensaje indicando que no existe ningún testimonio para ese lugar.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "A la izquierda se muestran datos del momento historico.",
                    style: TextStyle(
                      fontSize: provider.textSize,
                      color: provider.textColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  IconButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed("/principal"),
                    icon: Icon(
                      Icons.home_outlined,
                      color: provider.textColor,
                      size: provider.titleSize,
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
