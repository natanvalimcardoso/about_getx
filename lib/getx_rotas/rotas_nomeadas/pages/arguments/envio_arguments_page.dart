// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nome {
  final String name;
  final String email;
  Nome({
    required this.name,
    required this.email,
  });
}

class EnvioArgumentsPage extends StatelessWidget {
  EnvioArgumentsPage({Key? key}) : super(key: key);

  var nome = Nome(name: 'Ana Clara', email: 'ana@hotmail.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Arguments'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Arguments'),
              onPressed: () {
                //Forma normal de utilizar
                Get.toNamed(
                  '/envioArgumentsPage/recebendoArgumentosPage',
                  arguments: nome,
                );
              },
            ),
            ElevatedButton(
              child: const Text('Vários Arguments'),
              onPressed: () {
                Get.toNamed(
                  '/envioArgumentsPage/recebendoVariosArguments',
                  arguments: {
                    nome,
                    'Stringo normal',
                    2001,
                    ['natan', 'teste', 'ual']
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
