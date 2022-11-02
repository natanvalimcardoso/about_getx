import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offall_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFAll - pagina 2'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para pagina 3 e deletar rotas'),
          onPressed: () {
            Get.offAll(
              const OffAllPage3(),
              predicate: ModalRoute.withName('/OffAllHomePage'),
            );
          },
        ),
      ),
    );
  }
}
