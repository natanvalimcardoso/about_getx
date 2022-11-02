import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecebendoArguments extends StatelessWidget {
  const RecebendoArguments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parametroGetx = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Arguments'),
      ),
      body: Center(
        child: Text('Texto enviado: $parametroGetx'),
      ),
    );
  }
}
