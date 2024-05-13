import 'package:flutter/material.dart';

class MonedaScreen extends StatefulWidget {
  const MonedaScreen({super.key});

  @override
  State<MonedaScreen> createState() => _MonedaScreenState();
}

class _MonedaScreenState extends State<MonedaScreen> {
  String _selmoneda = 'dolar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Moneda'),
      ),
      body: Padding (
        padding: const EdgeInsets.all(16.0),
       child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text ( 
        'SeleccionarMoneda',
        style: TextStyle ( 
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
          ),
        ],
       ),
      ),
    );
  }
}
