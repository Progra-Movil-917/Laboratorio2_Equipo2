import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: const [
          NoticiaCard(
            titulo:
                'Marathón vs Génesis EN VIVO: Semifinal de vuelta en el Yankel',
            fecha: '11 de Mayo, 2024',
            contenido:
                '¡Te invitamos a nuestros próximos partido la Final de la Betcris!',
            imagenUrl:
                'https://upload.wikimedia.org/wikipedia/en/thumb/c/cb/CD_Marathon.svg/1200px-CD_Marathon.svg.png',
          ),
          NoticiaCard(
            titulo: 'Matrícula abierta',
            fecha: '26 de Junio, 2024',
            contenido:
                'Se le informa a toda la comunidad CEUTEC y demás que la matrícula para el próximo periodo académico se encuentra disponible.',
            imagenUrl:
                'https://cdn-icons-png.flaticon.com/512/4078/4078099.png',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Real Madrid arrasa al Granada',
            fecha: '11 de Mayo, 2024',
            contenido:
                'Los goles fueron anotados por Brahim Díaz, Fran García y Arda Guler, destacando el rendimiento de los menos habituales en el once inicial del Real Madrid.',
            imagenUrl:
                'https://www.elheraldo.hn/binrepository/1200x900/0c0/0d0/none/45933/VXNK/real-madrid-granada_7469439_20240511131445.jpg',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;
  final String imagenUrl;

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    fecha,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    contenido,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0),
            Image.network(
              imagenUrl,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
