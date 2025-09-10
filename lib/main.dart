import 'package:changuchito/pages/clasicos_page.dart';
import 'package:changuchito/pages/combos_page.dart';
import 'package:changuchito/pages/especiales_page.dart';
import 'package:changuchito/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/clasicos': (context) => const ClasicosPage(),
        '/especiales': (context) => const EspecialesPage(),
        '/combos': (context) => const CombosPage(),
      },
    );
  }
}
