import 'package:flutter/material.dart';

class ConfigurationProvider extends ChangeNotifier {
  double textSize = 16.0;
  double subtitleSize = 24.0;
  double titleSize = 32.0;

  final Color textColor = Colors.lightBlue[400]!;

  void decreaseTextSize() {
    textSize -= 1;
    notifyListeners();
  }

  void increaseTextSize() {
    textSize += 1;
    notifyListeners();
  }

  void decreaseSubtitleSize() {
    subtitleSize -= 1;
    notifyListeners();
  }

  void increaseSubtitleSize() {
    subtitleSize += 1;
    notifyListeners();
  }

  void decreaseTitleSize() {
    titleSize -= 1;
    notifyListeners();
  }

  void increaseTitleSize() {
    titleSize += 1;
    notifyListeners();
  }
}
