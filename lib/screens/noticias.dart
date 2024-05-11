import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoticiasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias Importantes'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          
          _buildNoticiaCard(
            titulo: "Evento de Reunión de Exalumnos",
            descripcion: "El próximo sábado se llevará a cabo un evento de reunión para todos los exalumnos de la universidad. ¡No te lo pierdas!",
            
  
            ),
          ),
          SizedBox(height: 16.0,
                    Widget:16,
                    child: Image.network('https://images.wallpapersden.com/image/download/kame-house-dragon-ball-z_a2llbmaUmZqaraWkpJRmaGtrrWxrbQ.jpg')
                    ),
          _buildNoticiaCard(
            titulo: "Cambio en el Horario de Clases",
            descripcion: "A partir de la próxima semana, el horario de clases se modificará ligeramente para mejorar la distribución de las asignaturas.",
          ),
          SizedBox(height: 16.0),
          _buildNoticiaCard(
            titulo: "Convocatoria para Becas Estudiantiles",
            descripcion: "Se abre la convocatoria para solicitar becas estudiantiles. Los estudiantes interesados pueden encontrar más información en el sitio web de la universidad.",
          ),
        ],
      ),
    );
  }

  Widget _buildNoticiaCard({required String titulo, required String descripcion}) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              descripcion,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
