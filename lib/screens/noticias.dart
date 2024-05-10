import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticas'),
      ),
      body: const Center(
        child: Text('Pantalla para las noticias'),
      ),
    );
  }
}
