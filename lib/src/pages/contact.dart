import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:proyecto_final/src/widgets/drawer_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPages extends StatefulWidget {
  @override
  _ContactPagesState createState() => _ContactPagesState();
}

class _ContactPagesState extends State<ContactPages> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _errorname, _errornumber, _erroremail, _errordescription;

  final ButtonStyle mainButtonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.brown[700]),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<StadiumBorder>(StadiumBorder()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => _showAlert(context), icon: Icon(Icons.check))
        ],
        backgroundColor: Colors.brown[700],
        title: Text('Contactanos'),
      ),
      drawer: DrawerWidget(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        children: [
          _topContainer(context),
          Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
        ],
      ),
    );
  }

  Widget _topContainer(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextField(
                  controller: _nameController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Nombre',
                    labelText: 'Nombre',
                    helperText: 'Ingrese su Nombre',
                    errorText: _errorname,
                    prefixIcon: Icon(
                      Icons.account_circle,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextField(
                  controller: _numberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Teléfono',
                    labelText: 'Teléfono',
                    helperText: 'Ingrese su numero',
                    errorText: _errornumber,
                    prefixIcon: Icon(
                      Icons.phone,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Correo',
                    labelText: 'Correo electronico',
                    helperText: 'example@example.com',
                    errorText: _erroremail,
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: TextField(
                  controller: _descriptionController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Mesaje',
                    labelText: 'Mensaje',
                    helperText: 'Ingrese su mensaje',
                    errorText: _errordescription,
                    prefixIcon: Icon(
                      Icons.message,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  bool _validateFiels() {
    bool fully = true;
    String name = _nameController.text;
    String nom = _numberController.text;
    String email = _emailController.text;
    String decription = _descriptionController.text;
    _errorname = null;
    _errornumber = null;
    _erroremail = null;
    _errordescription = null;

    if (name == ' ') {
      _errorname = 'campo obligatorio';
      return false;
    }

    if (nom == ' ') {
      _errornumber = 'campo obligatorio';
      return false;
    }

    if (email == ' ') {
      _erroremail = 'campo obligatorio';
      return false;
    }

    if (decription == ' ') {
      _errordescription = 'campo obligatorio';
      return false;
    }
    setState(() {});
    return fully;
  }

  void _showAlert(BuildContext context) {
    if (_validateFiels()) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: Colors.black,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Su mensaje se a enviado',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Image(image: AssetImage('assets/img/bear.jpg')),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Aceptar',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
              ],
            );
          });
    }
  }
}
