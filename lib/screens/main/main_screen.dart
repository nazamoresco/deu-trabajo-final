import 'package:deu/screens/main/widgets/property_display_toggle.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inundacion en La Plata en 2013",
          style: TextStyle(color: Colors.lightBlue),
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
    );
  }
}
