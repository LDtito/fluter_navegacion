// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rutas/src/pages/home_page.dart';
import 'package:rutas/src/pages/page_verde.dart';
import 'package:rutas/src/pages/pagina_azul.dart';
import 'package:rutas/src/pages/pagina_roja.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: [
        GoRoute(path: '/' , builder: (context, state) => HomePage(),),
        GoRoute(path: '/verde' , builder: (context, state) => VerdePage(),),
        GoRoute(path: '/azul', builder: (context, state) => AzulPage(),),
        GoRoute(path: '/rojo', builder: (context, state) => RojoPage(),),
      ]),
    );
  }
}