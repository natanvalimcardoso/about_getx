import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackPage extends StatelessWidget {
  const BackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Voltar'),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
