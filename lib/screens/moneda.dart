import 'package:flutter/material.dart';

class MonedaScreen extends StatefulWidget {
  const MonedaScreen({super.key});

  @override
  State<MonedaScreen> createState() => _MonedaScreenState();
}

class _MonedaScreenState extends State<MonedaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monedas'),
      ),
      body: const Center(
        child: Text('Pantalla para el cambio de moneda'),
      ),
    );
  }
}
