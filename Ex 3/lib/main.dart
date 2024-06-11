import 'package:flutter/material.dart';
import 'package:flutter_application_2/filme_pagina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Filmes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FilmePagin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
