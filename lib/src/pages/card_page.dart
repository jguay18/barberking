import 'package:flutter/material.dart';
import 'package:proyecto_final/src/components/products.dart';

class Cart extends StatefulWidget {
  final List<products> _cart;

  Cart(this._cart);

  @override
  _CartState createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);

  final _scrollController = ScrollController();
  var _firstScroll = true;

  List<products> _cart;

  Container pagoTotal(List<products> _cart) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(left: 120),
      height: 70,
      width: 400,
      color: Colors.grey[200],
      child: Row(
        children: <Widget>[
          Text(
            'Total',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
