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
      return MaterialApp(
          title: 'Bienvenido - Ayuda',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
              appBar: AppBar(
                toolbarHeight: 70,
                title: Text("Inundaciones La plata - Mapa de Testimonios",
                    style: TextStyle(
                      color: provider.textColor,
                      fontSize: provider.titleSize,
                    )),
              ),
              body: Container(
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "La página se utiliza para poder ver los testimonios de la inundación en La Plata en 2013",
                          style: TextStyle(
                            fontSize: provider.subtitleSize,
                            color: provider.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(
                      child: Text(
                        "Cuando seleccionas un punto en el mapa se mostrará la información del testimonio en la parte izquierda de la pantalla. Si no existe ningún testimonio para ese lugar, se mostrará un mensaje indicando que no existe ningún testimonio para ese lugar.",
                        style: TextStyle(
                          fontSize: provider.textSize,
                          color: provider.textColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "",
                        style: TextStyle(
                          fontSize: provider.textSize,
                          color: provider.textColor,
                        ),
                      ),
                    )
                  ]),
                ]),
              )));
    });
  }
}
