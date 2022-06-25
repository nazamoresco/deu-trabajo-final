import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:deu/shared/widgets/configuration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfigurationScreen extends StatelessWidget {
  const ConfigurationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, provider, _) => Scaffold(
        appBar: AppBar(
          title: SelectableText(
            "Configuracion",
            style: TextStyle(
              color: provider.textColor,
              fontSize: provider.titleSize,
            ),
          ),
        ),
        body: const Configuration(),
      ),
    );
  }
}
