import 'package:flutter/material.dart';

class TareasScreen extends StatefulWidget {
  const TareasScreen({Key? key}) : super(key: key);

  @override
  _TareasScreenState createState() => _TareasScreenState();
}

class _TareasScreenState extends State<TareasScreen> {
  List<Tarea> tareas = [
    Tarea(titulo: 'Tarea 1', descripcion: 'Descripción de la tarea 1'),
    Tarea(titulo: 'Tarea 2', descripcion: 'Descripción de la tarea 2'),
    Tarea(titulo: 'Tarea 3', descripcion: 'Descripción de la tarea 3'),
    Tarea(titulo: 'Tarea 4', descripcion: 'Descripcion de la tarea 4'),
    Tarea(titulo: 'Tarea5', descripcion: 'Descripcion de la tarea 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de tareas',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tareas[index].titulo),
            subtitle: Text(tareas[index].descripcion),
            trailing: IconButton(
              icon: Icon(
                tareas[index].favorito ? Icons.star : Icons.star_border,
                color: tareas[index].favorito ? Colors.yellow : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  tareas[index].favorito = !tareas[index].favorito;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class Tarea {
  final String titulo;
  final String descripcion;
  bool favorito;

  Tarea({
    required this.titulo,
    required this.descripcion,
    this.favorito = false,
  });
}
