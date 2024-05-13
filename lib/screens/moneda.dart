import 'package:flutter/material.dart';

class MonedaScreen extends StatefulWidget {
  const MonedaScreen({super.key});

  @override
  State<MonedaScreen> createState() => _MonedaScreenState();
}

class _MonedaScreenState extends State<MonedaScreen> {
  String _selmoneda = 'dolar';
  String _nomMoneda = 'Dolar';
  final TextEditingController _controller = TextEditingController();
  String _result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Moneda'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Moneda Seleccionada: $_nomMoneda',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _camMoneda('Dolar', 'Dolar');
                  },
                  child: const Text('Dolar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _camMoneda('Euro', 'Euro');
                  },
                  child: const Text('Euro'),
                ),
              ],
            ),
            const SizedBox(height: 35),
            _buildPrecio('Compra', _ValorCompra()),
            _buildPrecio('Venta', _ValorVenta()),
            const SizedBox(height: 16.0),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese la cantidad a convertir',
              ),
            ),
            const SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                _conversion();
              },
              child: const Text('Convertir'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Lempiras: $_result',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  //Metodo para hacer los cambios de moneda
  void _camMoneda(String newMoneda, String nameMoneda) {
    setState(() {
      _selmoneda = newMoneda;
      _nomMoneda = nameMoneda;
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
      return '24.69';
    } else if (_selmoneda == 'Euro') {
      return '25.27';
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
