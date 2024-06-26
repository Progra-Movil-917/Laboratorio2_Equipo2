import 'package:flutter/material.dart';
import 'package:lab2_equipo2/screens/home.dart';
import 'package:lab2_equipo2/screens/moneda.dart';
import 'package:lab2_equipo2/screens/noticias.dart';
import 'package:lab2_equipo2/screens/podcast.dart';
import 'package:lab2_equipo2/screens/tareas.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Ceutec',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/noticias': (context) => const NoticiasScreen(),
        '/monedas': (context) => const MonedaScreen(),
        '/tareas': (context) => const TareasScreen(),
        '/podcast': (context) => const PodcastScreen(),
      },
    );
  }
}
