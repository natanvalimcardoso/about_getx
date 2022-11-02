import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offall_page2.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFAll - pagina 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para pagina 2'),
          onPressed: () {
             Get.to(const OffAllPage2());
          },
        ),
      ),
    );
  }
}
