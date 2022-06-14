import 'package:flutter/material.dart';

class PropertyDisplayToggle extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color textColor;
  final Color backgroundColor;

  const PropertyDisplayToggle({
    Key? key,
    required this.icon,
    required this.label,
    required this.textColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadiusDirectional.all(Radius.circular(4)),
      ),
      child: Column(
        children: [
          Icon(icon, color: textColor),
          Text(
            label,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
