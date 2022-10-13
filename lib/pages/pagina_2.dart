import 'package:flutter/material.dart';
import 'package:gestio_estats/models/usuari.dart';
import 'package:gestio_estats/services/usuari_service.dart';

import '../models/usuari.dart';

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
            StreamBuilder(
              stream: usuariService.usuariStream,
              builder: (BuildContext context, AsyncSnapshot<Usuari> snapshot) {
                return snapshot.hasData
                    ? Text('${snapshot.data!.nom}')
                    : Text('Nom: Undefined');
              },
            ),
            MaterialButton(
              child: Text('Establir usuari',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                final nouUsuari = new Usuari(
                    nom: 'Nom per defecte', edat: 30, professions: null);
                usuariService.guardaUsuari(nouUsuari);
              },
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
