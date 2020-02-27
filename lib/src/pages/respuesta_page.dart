import 'dart:math';

import 'package:flutter/material.dart';

class RespuestaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu respuesta')
      ),
      body: _RespuestaRandom( pregunta: '¿Comemos?' ),
    );
  }
}

class _RespuestaRandom extends StatelessWidget {

  _RespuestaRandom( {this.pregunta} );

  final String pregunta;

  @override
  Widget build(BuildContext context) {

    final List _opciones = [
      'Si', 'No', 'Puede ser', 'No se!', 'Por supuesto', 'Nunca!', 'Algún día'
    ];

    final _random = new Random();
    final _resp = _opciones[_random.nextInt(_opciones.length)];


    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Pregunta'),
            SizedBox( height: 10.0 ),
            Text(this.pregunta, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 25.0 )),
            SizedBox( height: 20.0 ),
            Icon( Icons.arrow_downward ),
            SizedBox( height: 20.0 ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.pink
                ),
                child: Text( _resp, style: TextStyle( fontSize: 50.0, color: Colors.white ) )
              ),
            )
          ]
        ),
      ),
    );
  }
}