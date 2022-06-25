import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextSizeInput extends StatelessWidget {
  final String label;
  final double value;
  final void Function() decrease;
  final void Function() increase;

  const TextSizeInput({
    Key? key,
    required this.label,
    required this.value,
    required this.decrease,
    required this.increase,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, provider, _) => Row(
        children: [
          Expanded(
            child: Text(
              "Tamaño del $label: $value",
              style: TextStyle(
                color: provider.textColor,
                fontSize: provider.textSize,
              ),
            ),
          ),
          IconButton(
            onPressed: decrease,
            icon: Icon(
              Icons.text_decrease,
              color: provider.textColor,
              semanticLabel: "Decrementar el tamaño del $label",
            ),
          ),
          IconButton(
            onPressed: increase,
            icon: Icon(
              Icons.text_increase,
              color: provider.textColor,
              semanticLabel: "Incrementar el tamaño del $label",
            ),
          ),
        ],
      ),
    );
  }
}
