import 'package:flutter/material.dart';
import 'package:flutter_test_1/src/pages/home.dart';

import 'package:flutter_test_1/src/pages/respuesta_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bola 8',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: 'home',
      routes: {
        'home'     : (BuildContext context) => HomePage(),
        'respuesta': (BuildContext context) => RespuestaPage(),
      },

    );
  }
}