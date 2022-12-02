import 'package:about_getx/dependency_management/pages/metodos/lazyput/lazy_put_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lazy_put_fenix_controller.dart';

class LazyPut extends StatefulWidget {
  LazyPut({Key? key}) : super(key: key) {
    Get.lazyPut(() => LazyPutController());
    // Mata a instancia porém ele mantem a factory ativa dentro do get fazendo com que tenha possibilidade de acessa-la de qualquer lugar para sempre
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
  }

  @override
  State<LazyPut> createState() => _LazyPutState();
}

String nome = '';
String nomeFenix = '';

class _LazyPutState extends State<LazyPut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy-Put'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('O nome é: $nome'),
            Text('O nome é: $nomeFenix'),
            ElevatedButton(
              child: const Text('Buscar nome'),
              onPressed: () {
               final controller = Get.find<LazyPutController>();
               setState(() {
                 nome = controller.nome;
               
               });
              },
            ),

            ElevatedButton(
              child: const Text('Buscar nome Fenix'),
              onPressed: () {
               final controller = Get.find<LazyPutFenixController>();
               setState(() {
                 nomeFenix = controller.nome;
               
               });
              },
            ),
          ],
        ),
      ),
    );
  }
}
