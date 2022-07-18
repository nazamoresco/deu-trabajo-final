import 'package:deu/screens/configuration/configuration_screen.dart';
import 'package:deu/screens/initial/initial_screen.dart';
import 'package:deu/screens/main/main_screen.dart';
import 'package:deu/shared/providers/map_selected_marker_provider.dart';
import 'package:deu/shared/providers/markers_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'shared/providers/configuration_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  RendererBinding.instance.setSemanticsEnabled(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ConfigurationProvider()),
        ChangeNotifierProvider(
          create: (context) => MapSelectedMarkerProvider(),
        ),
        ChangeNotifierProvider(create: (context) => MapItemsProvider()),
      ],
      child: Consumer<ConfigurationProvider>(
        builder: (context, provider, _) => MaterialApp(
          title: 'Mapa de Testimonios',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.lightBlue[50],
              foregroundColor: provider.textColor,
            ),
            iconTheme: IconThemeData(
              color: Colors.lightBlue[900],
            ),
          ),
          initialRoute: "/initial",
          routes: {
            "/principal": (context) => const MainScreen(),
            "/configuracion": (context) => const ConfigurationScreen(),
            "/initial": (context) => const InitialScreen(),
          },
        ),
      ),
    );
  }
}
