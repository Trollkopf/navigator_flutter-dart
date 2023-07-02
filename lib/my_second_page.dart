import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pantalla nº 2',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text('Pulse un botón para cambiar de pantalla'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route1');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                child: const Text('Página 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route3');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                child: const Text('Página 3'))
          ],
        ),
      ),
    );
  }
}