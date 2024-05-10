import 'package:flutter/material.dart';

class TareasScreen extends StatelessWidget {
  const TareasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcast'),
      ),
      body: const Center(
        child: Text('Pantalla para el podcast'),
      ),
    );
  }
}
