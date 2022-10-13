import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pàgina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establir usuari',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {},
            ),
            MaterialButton(
              child:
                  Text('Canviar edat', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {},
            ),
            MaterialButton(
              child: Text('Afegir professió',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
