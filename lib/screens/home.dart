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
            leading: Icon(Icons.newspaper),
            title: Text('Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/noticias');
            },
          ),
          ListTile(
            leading: Icon(Icons.currency_exchange),
            title: Text('El cambio de Monedas'),
            onTap: () {
              Navigator.pushNamed(context, '/monedas');
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lista de tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/tareas');
            },
          ),
          ListTile(
            leading: Icon(Icons.podcasts),
            title: Text('Podcast'),
            onTap: () {
              Navigator.pushNamed(context, '/podcast');
            },
          ),
        ],
      ),
    );
  }
}
