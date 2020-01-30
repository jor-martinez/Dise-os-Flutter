import 'package:flutter/material.dart';

class DesignUno extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 16.0, color: Colors.grey);
  final estiloBotones = TextStyle(fontSize: 20.0, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _tituloValoracion(),
            _botones(),
            _texto(),
            _texto(),
            _texto(),
            _texto(),
            _texto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _tituloValoracion(){
    final fila = Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Oeschinen Lake Campground', style: estiloTitulo,),
              SizedBox(height: 7.0,),
              Text('Kandersteg, Switzerland', style: estiloSubtitulo,),
            ],
          ),
        ),
        
        Icon(Icons.star, color: Colors.red,),
        Text('41')
      ],
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: fila,
      ),
    );
  }

  Widget _botones() {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );


  }

  Widget _accion(IconData icono, String texto){
    return Column(
      children: <Widget>[
        Icon(icono, color: Colors.blue, size: 30.0,),
        SizedBox(height: 5.0,),
        Text( texto, style: estiloBotones,)
      ],
    );
  }

  Widget _texto() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac bibendum massa. Etiam dignissim odio vitae erat euismod lacinia. Mauris tempor, eros vel condimentum varius, tortor eros rutrum justo, sed porta neque ligula eu turpis. Mauris consequat elementum sapien, interdum iaculis justo porttitor et. Quisque hendrerit nisi eu sapien facilisis vestibulum.',
            style: TextStyle(fontSize: 16.0),
            textAlign: TextAlign.justify,
          )
        ),
    );
  }

}