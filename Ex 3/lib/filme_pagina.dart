import 'package:flutter/material.dart';

class FilmePagina extends StatefulWidget {
  const FilmePagina({super.key});

  @override
  State<FilmePagina> createState() => _FilmePaginaState();
}

class _FilmePaginaState extends State<FilmePagina> {
  final TextEditingController controlador = TextEditingController();
  final List<Map<String, dynamic>> listaFilmes = [];

  void _adicionarFilme() {
    setState(() {
      listaFilmes.add({'nome': controlador.text, 'curtido': false});
      controlador.clear();
    });
  }

  void _alternarCurtida(int index) {
    setState(() {
      listaFilmes[index]['curtido'] = !listaFilmes[index]['curtido'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Filmes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controlador,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome do Filme',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _adicionarFilme,
              child: const Text('Adicionar Filme'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: listaFilmes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listaFilmes[index]['nome']),
                    trailing: Icon(
                      listaFilmes[index]['curtido']
                          ? Icons.thumb_up
                          : Icons.thumb_up_off_alt,
                      color: listaFilmes[index]['curtido'] ? Colors.blue : null,
                    ),
                    onTap: () => _alternarCurtida(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
