import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'envio_arguments_page.dart';

// ignore: must_be_immutable
class RecebendoArgumentosPage extends StatelessWidget {
  // final Nome nome;
  RecebendoArgumentosPage({Key? key,}) : super(key: key);

  Nome arguments = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo os arguments'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arguments.name),
            Text(arguments.email),
          ],
        ),
      ),
    );
  }
}
