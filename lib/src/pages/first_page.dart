import 'package:flutter/material.dart';
import 'package:proyecto_final/src/components/horizontal_list.dart';
import 'package:proyecto_final/src/components/products.dart';
import 'package:proyecto_final/src/widgets/drawer_widget.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/img/hover1.jpg'),
          AssetImage('assets/img/crew.jpg'),
          AssetImage('assets/img/corte.jpg'),
          AssetImage('assets/img/style.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.brown[700],
        title: Text('Barber king'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () => Navigator.pushReplacementNamed(context, 'card'),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categoria'),
          ),
          Container(
            child: HorizontalList(),
          ),
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recien Agregados'),
          ),
          Container(
            height: 320.0,
            child: products(),
          ),
        ],
      ),
    );
  }
}
