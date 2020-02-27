import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String _pregunta = '';
  final _inputPregunta  = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         title: Text('Bola 8'),
      ),
      body: Center(
        
        child: Column(
          children: <Widget>[
            _crearInput(),
            _boton(),
          ],  

          //margin: const EdgeInsets.all(10.0),
         // SizedBox(width:40, height: 140,),
          //width: 300,  
          
        ),

      ),
    );
  }

  Widget _boton(){
    return Center(
          child: RaisedButton(
            child: Text ('Mostrar Respuesta'),
            color: Colors.pink,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed:() {
              print(_inputPregunta);
                //Navigator.pushNamed(context, 'respuesta', arguments: _inputPregunta);
              
            },
          ),
        );
  }


  Widget _crearInput() {

    return TextField(
      //autocorrect: true,
      controller: _inputPregunta,
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        counter: Text('Letras: ${ _inputPregunta.text.length }'),
        hintText: 'Ingrese una Pregunta',
        labelText: 'Pregunta',
        //helperText: 'Ingrese su Pregunta',
        suffixIcon: Icon( Icons.question_answer),
        icon: Icon(Icons.cloud_done)
      ),
      
      onChanged: (valor){
        setState(() {
           _pregunta = valor;
        });
      },

      

      
    );
    
  }
}