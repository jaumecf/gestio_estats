import 'package:flutter/material.dart';
import 'package:gestio_estats/pages/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina_1',
      routes: {
        'pagina_1': (_) => Pagina1(),
        'pagina_2': (_) => Pagina2(),
      },
    );
  }
}
