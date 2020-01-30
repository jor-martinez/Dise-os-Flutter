import 'package:disenos_flutter/src/pages/design_tres.dart';
import 'package:flutter/material.dart';
 
import 'package:disenos_flutter/src/pages/design_dos.dart';
import 'package:disenos_flutter/src/pages/design_uno.dart';
import 'package:disenos_flutter/src/pages/home_page.dart';
// import 'package:flutter/services.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.white
    // ) );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: '/',
      routes: {
        '/'       : ( BuildContext context ) => HomePage(),
        'uno'     : ( BuildContext context ) => DesignUno(),
        'dos'     : ( BuildContext context ) => DesignDos(),
        'tres'    : ( BuildContext context ) => DesignTres(),
      },
    );
  }
}