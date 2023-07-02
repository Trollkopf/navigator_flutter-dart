import 'package:flutter/material.dart';
import 'my_first_page.dart';
import 'my_second_page.dart';
import 'my_third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
