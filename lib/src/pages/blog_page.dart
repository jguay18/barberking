import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:proyecto_final/src/widgets/drawer_widget.dart';

class BlogPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text('Blog'),
      ),
      drawer: DrawerWidget(),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [_cardVision(), _secondVision()],
      ),
    );
  }

  Widget _cardVision() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Image(image: AssetImage('assets/img/blog.jpg')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '¿Quienes somos?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.'),
          )
        ],
      ),
    );
  }

  Widget _secondVision() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Image(image: AssetImage('assets/img/second.jpg')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Misión',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.'),
          )
        ],
      ),
    );
  }
}
