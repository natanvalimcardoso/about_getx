import 'package:about_getx/dependency_management/pages/metodos/lazyput/lazy_put_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LazyPut extends StatefulWidget {
  LazyPut({Key? key}) : super(key: key) {
    Get.lazyPut(() => LazyPutController());
  }

  @override
  State<LazyPut> createState() => _LazyPutState();
}

String nome = '';

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
            ElevatedButton(
              child: const Text('Buscar nome'),
              onPressed: () {
               final controller = Get.find<LazyPutController>();
               setState(() {
                 nome = controller.nome;
               
               });
              },
            ),
          ],
        ),
      ),
    );
  }
}
