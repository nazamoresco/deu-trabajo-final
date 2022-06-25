import 'package:deu/shared/providers/configuration_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PropertyDisplayToggle extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color textColor;
  final void Function() onPressed;
  final bool enabled;

  const PropertyDisplayToggle({
    Key? key,
    required this.icon,
    required this.label,
    required this.textColor,
    required this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
      builder: (context, provider, _) => InkWell(
        onTap: onPressed,
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: enabled ? Colors.lightBlue[200] : Colors.transparent,
              borderRadius:
                  const BorderRadiusDirectional.all(Radius.circular(4)),
            ),
            child: Column(
              children: [
                Icon(icon, color: textColor),
                Text(
                  label,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: provider.textSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
