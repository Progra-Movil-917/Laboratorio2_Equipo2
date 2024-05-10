import 'package:flutter/material.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
      ),
      body: const Center(
        child: Text('Pantalla para las tareas'),
      ),
    );
  }
}
