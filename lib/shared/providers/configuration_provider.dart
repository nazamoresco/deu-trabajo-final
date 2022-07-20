import 'package:flutter/material.dart';

class ConfigurationProvider extends ChangeNotifier {
  double textSize = 16.0;
  double subtitleSize = 24.0;
  double titleSize = 32.0;

  final Color textColor = Colors.lightBlue[900]!;

  bool helpEnabled = true;

  bool showCauces = true;
  bool showWitness = true;
  bool showNews = true;

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

  void toogleCauces() {
    showCauces = !showCauces;
    notifyListeners();
  }

  void toggleWitnesses() {
    showWitness = !showWitness;
    notifyListeners();
  }

  void toggleNews() {
    showNews = !showNews;
    notifyListeners();
  }
}
