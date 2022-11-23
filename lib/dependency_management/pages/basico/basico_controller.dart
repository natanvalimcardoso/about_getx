
import 'package:flutter/material.dart';

class BasicoController extends ChangeNotifier {
  var nome = 'Sem nome';

  void alterarNome(String novoNome) {
    nome = novoNome;
    notifyListeners();
  }
}