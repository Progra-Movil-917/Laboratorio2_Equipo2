import 'package:flutter/material.dart';

class MonedaScreen extends StatefulWidget {
  const MonedaScreen({super.key});

  @override
  State<MonedaScreen> createState() => _MonedaScreenState();
}

class _MonedaScreenState extends State<MonedaScreen> {
  String _selmoneda = 'dolar';
  TextEditingController _controller = TextEditingController ();
  String _result = '';
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
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton( 
                onPressed: () {_camMoneda('Dolar');
                },
                child: Text('Dolar'),
              ),
              ElevatedButton(
                  onPressed: () {
                    _camMoneda('Euro');
                  },
                  child: Text('Euro'),
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
  Widget _buildPrecio(String tipo, String valor)
  {
    return Column ( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text ( 
          '$tipo:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text ( 
          'L.$valor',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
