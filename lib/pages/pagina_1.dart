import 'package:flutter/material.dart';
import 'package:gestio_estats/services/usuari_service.dart';

import '../models/usuari.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pàgina 1'),
      ),
      /* Com mostrar la informació en funció de sis tenim dades d'aquest o no?
      Canviarem el cos que teniem, (nomes info usuari), per un stream builder
      Aquest ens permetrà accedir al snapshot que contindrà les dades que 
      enviarem des de la classe Usuari_service (singleton).
      */
      body: StreamBuilder(
        stream: usuariService.usuariStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? InfoUser(snapshot.data)
              : Center(child: Text('No hi ha informació de l\'usuari'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina_2'),
      ),
    );
  }
}

class InfoUser extends StatelessWidget {
  final Usuari usuari;

  InfoUser(this.usuari);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text('Nom: ${usuari.nom}')),
          ListTile(title: Text('Edat: ${usuari.edat}')),
          Text('Professions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text('Professió 1: ')),
          ListTile(title: Text('Professió 1: ')),
          ListTile(title: Text('Professió 1: ')),
        ],
      ),
    );
  }
}
