import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Ceutec',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text('Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/noticias');
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_exchange),
            title: const Text('Cambio de Monedas'),
            onTap: () {
              Navigator.pushNamed(context, '/monedas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lista de tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/tareas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.podcasts),
            title: const Text('Podcast'),
            onTap: () {
              Navigator.pushNamed(context, '/podcast');
            },
          ),
        ],
      ),
    );
  }
}
