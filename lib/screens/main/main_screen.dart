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
                onPressed: provider.toogleCauces,
                icon: Icons.waves_outlined,
                label: "Cauce",
                textColor: Colors.red,
                enabled: provider.showCauces,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: PropertyDisplayToggle(
                onPressed: provider.toggleWitnesses,
                icon: Icons.campaign_outlined,
                label: "Testimonios",
                textColor: Colors.blue[800]!,
                enabled: provider.showWitness,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: PropertyDisplayToggle(
                onPressed: provider.toggleNews,
                icon: Icons.newspaper_outlined,
                label: "Noticias",
                textColor: Colors.black,
                enabled: provider.showNews,
              ),
            ),
          ],
        ),
        body: Container(
          color: Colors.lightBlue[100],
          child: MediaQuery.of(context).size.width > 1000
              ? Row(
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
                )
              : Column(
                  children: [
                    Flexible(
                      flex: 5,
                      child: LaPlataMap(),
                    ),
                    const Flexible(
                      flex: 5,
                      child: SingleChildScrollView(child: MapSidebar()),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
