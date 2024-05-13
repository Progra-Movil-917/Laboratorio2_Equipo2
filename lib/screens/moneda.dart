import 'package:flutter/material.dart';

class MonedaScreen extends StatefulWidget {
  const MonedaScreen({super.key});

  @override
  State<MonedaScreen> createState() => _MonedaScreenState();
}

class _MonedaScreenState extends State<MonedaScreen> {
  String _selmoneda = 'dolar';
  TextEditingController _controller = TextEditingController();
  String _result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Moneda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SeleccionarMoneda',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _camMoneda('Dolar');
                  },
                  child: const Text('Dolar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _camMoneda('Euro');
                  },
                  child: const Text('Euro'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _camMoneda(String newMoneda) {
    setState(() {
      _selmoneda = newMoneda;
      _controller.clear();
      _result = '';
    });
  }

  Widget _buildPrecio(String tipo, String valor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$tipo:',
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'L.$valor',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  //Metodo para presentar el valor de compra de cada moneda
  String _ValorCompra() {
    if (_selmoneda == 'Dolar') {
      return '24.6968';
    } else if (_selmoneda == 'Euro') {
      return '25.2772';
    }
    return '';
  }

  //Metodo para presentar el valor de venta de cada moneda
  String _ValorVenta() {
    if (_selmoneda == 'Dolar') {
      return '24.73';
    } else if (_selmoneda == 'Euro') {
      return '26.64';
    }
    return '';
  }

  //Metodo para hacer la convercion de las monedas
  void _conversion() {
    double cant = double.tryParse(_controller.text) ?? 0.0;
    double tasa;

    if (_selmoneda == 'Dolar') {
      tasa = cant * double.parse(_ValorVenta());
    } else if (_selmoneda == 'Euro') {
      tasa = cant * double.parse(_ValorVenta());
    } else {
      tasa = 0.0;
    }
    setState(() {
      _result = tasa.toStringAsFixed(2);
    });
  }
}
