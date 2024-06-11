import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' show Platform;

class Resultado extends StatelessWidget {
  final String _textoRecebido;

  Resultado(this._textoRecebido, {super.key});

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/imagens/android.png'; // Default to Android image
    if (Platform.isWindows) {
      imagePath = 'assets/imagens/win.png';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado:'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            criaContainer(_textoRecebido, 20.0, GoogleFonts.sevillana()),
            criaContainer(_textoRecebido, 20.0, GoogleFonts.roboto()),
            criaContainer(_textoRecebido, 20.0, GoogleFonts.sourceCodePro()),
            Image.asset(imagePath),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }

  Container criaContainer(String texto, double espaco, TextStyle fonte) {
    return Container(
      padding: EdgeInsets.all(espaco),
      child: criaTexto(texto, fonte),
    );
  }

  Text criaTexto(String texto, TextStyle estilo) {
    return Text(
      texto,
      style: estilo,
    );
  }
}
