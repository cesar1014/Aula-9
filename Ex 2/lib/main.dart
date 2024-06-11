import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Caixas Responsivo'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 400) {
              return Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              );
            } else if (constraints.maxWidth <= 800) {
              return Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(2, (index) {
                    return Container(
                      width: 180,
                      height: 180,
                      color: Colors.blue,
                    );
                  }),
                ),
              );
            } else {
              return Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(3, (index) {
                    return Container(
                      width: 250,
                      height: 250,
                      color: Colors.blue,
                    );
                  }),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
