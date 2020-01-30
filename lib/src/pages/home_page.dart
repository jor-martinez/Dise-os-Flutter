import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Diseños Flutter' ),
        centerTitle: true,
      ),
      body: _crearLista(context),
    );
  }

  Widget _crearLista(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Diseño 1'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.pushNamed(context, 'uno');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Diseño 2'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.pushNamed(context, 'dos');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Diseño 3'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.pushNamed(context, 'tres');
          },
        ),
        Divider(),
      ],
    );
  }
}