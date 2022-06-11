import 'package:deu/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapa de Testimonios',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue[100],
        ),
      ),
      initialRoute: "/principal",
      routes: {
        "/principal": (context) => const MainScreen(),
      },
    );
  }
}
