import 'dart:developer';

import 'package:deu/screens/main/widgets/map.dart';
import 'package:deu/screens/main/widgets/map_sidebar.dart';
import 'package:deu/screens/main/widgets/property_display_toggle.dart';
import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, provider, _) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text(
            "Inundacion en La Plata en 2013",
            style: TextStyle(
              color: provider.textColor,
              fontSize: provider.titleSize,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: PropertyDisplayToggle(
                icon: Icons.waves_outlined,
                label: "Cauces",
                textColor: Colors.red,
                backgroundColor: Colors.lightBlue[200]!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: PropertyDisplayToggle(
                icon: Icons.campaign_outlined,
                label: "Testigos",
                textColor: Colors.blue[800]!,
                backgroundColor: Colors.lightBlue[200]!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: PropertyDisplayToggle(
                icon: Icons.newspaper_outlined,
                label: "Noticias",
                textColor: Colors.black,
                backgroundColor: Colors.lightBlue[200]!,
              ),
            ),
          ],
        ),
        body: Container(
          color: Colors.lightBlue[100],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                flex: 3,
                child: SingleChildScrollView(child: MapSidebar()),
              ),
              Flexible(
                flex: 8,
                child: LaPlataMap(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
