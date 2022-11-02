import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_page2.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OF - pagina 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para pagina 2'),
          onPressed: () {
             Get.to(const OffPage2());
          },
        ),
      ),
    );
  }
}
