import 'package:deu/screens/configuration/configuration_screen.dart';
import 'package:deu/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'shared/providers/configuration_provider.dart';

void main() {
  runApp(const MyApp());
  RendererBinding.instance!.setSemanticsEnabled(true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConfigurationProvider(),
      child: Consumer<ConfigurationProvider>(
        builder: (context, provider, _) => MaterialApp(
          title: 'Mapa de Testimonios',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.lightBlue[50],
            ),
          ),
          initialRoute: "/principal",
          routes: {
            "/principal": (context) => const MainScreen(),
            "/configuracion": (context) => const ConfigurationScreen()
          },
        ),
      ),
    );
  }
}
