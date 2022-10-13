import 'dart:async';

import 'package:gestio_estats/models/usuari.dart';

class _UsuariService {
  Usuari? _usuari;

  StreamController<Usuari> _usuariStreamController =
      new StreamController<Usuari>.broadcast();

  Usuari? get usuari => this._usuari;

  bool get exixteixUsuari => (this._usuari != null) ? true : false;

  Stream<Usuari> get usuariStream => _usuariStreamController.stream;

  void guardaUsuari(Usuari usuari) {
    this._usuari = usuari;
    this._usuariStreamController.add(usuari);
  }

  void canviaEdat(int edat) {
    this._usuari!.edat = edat;
  }

  dispose() {
    this._usuariStreamController.close();
  }
}

final usuariService = new _UsuariService();
