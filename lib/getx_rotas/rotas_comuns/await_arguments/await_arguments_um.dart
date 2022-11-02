import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'await_arguments_dois.dart';

class AwaitArgumentsUm extends StatelessWidget {
  const AwaitArgumentsUm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esperando o AWAIT'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Ir para proxima tela'),
              onPressed: () async {
                final result = await Get.to(AwaitArgumentsDois());
              },
            ),
          ],
        ),
      ),
    );
  }
}
