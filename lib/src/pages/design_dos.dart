import 'package:flutter/material.dart';

class DesignDos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
    );

  }

  Widget _pagina1(){

    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );


  }

  Widget _colorFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
    );

  }

  Widget _imagenFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/fondo_scroll_page.png'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _textos(){

    final estiloTexto = TextStyle(fontSize: 50.0, color: Colors.white);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: estiloTexto,),
          Text('Miércoles', style: estiloTexto),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );

  }


  Widget _pagina2(){

    return Stack(
      children: <Widget>[
        _colorFondo(),
        _boton(),
      ],
    );


  }

  Widget _boton(){
    return Center(
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text('Bienvenido', style: TextStyle(fontSize: 20.0),),
        elevation: 10.0,
        shape: StadiumBorder(),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: (){},
      ),
    );
  }


}