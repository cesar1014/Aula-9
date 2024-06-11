import 'package:flutter/material.dart';
import 'package:flutter_application_2/creditos.dart';
import 'package:flutter_application_2/resultado.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  TextEditingController controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Créditos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Creditos(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Início:'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controlador,
            onChanged: (String texto) {
              setState(() {});
            },
          ),
          Text(controlador.text),
          ElevatedButton(
            onPressed: () {
              print("Botão Verificar pressionado");
              print("Texto digitado: ${controlador.text}");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resultado(controlador.text),
                ),
              );
            },
            child: Text('Verificar'),
          ),
        ],
      ),
    );
  }
}
