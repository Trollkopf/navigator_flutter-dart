import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyFirstPage(title: 'Navegación'),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) =>
            const MyFirstPage(title: 'Página 1'),
        '/route2': (BuildContext context) =>
            const MySecondPage(title: 'Página 2'),
        '/route3': (BuildContext context) =>
            const MyThirdPage(title: 'Página 3'),
      },
    );
  }
}

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          '$title: Página principal',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pantalla nº 1',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text('Pulsar el siguiente botón para cambiar de pantalla'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route2');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white),
                child: const Text('Página 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route3');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white),
                child: const Text('Página 3'))
          ],
        ),
      ),
    );
  }
}

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
            const Text('Para volver Pulse el siguiente botón'),
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

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pantalla nº 3',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.deepPurple),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text('Para volver Pulse el siguiente botón'),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route1');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white),
                child: const Text('Página 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route2');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white),
                child: const Text('Página 2'))
          ],
        ),
      ),
    );
  }
}
