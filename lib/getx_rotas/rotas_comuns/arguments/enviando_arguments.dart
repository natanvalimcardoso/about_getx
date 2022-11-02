import 'package:about_getx/getx_rotas/rotas_comuns/arguments/recebendo_arguments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnviandoArguments extends StatelessWidget {
  EnviandoArguments({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Arguments'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Label',
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                const RecebendoArguments(),
                arguments: _controller.text,
              );
            },
            child: const Text('Enviar Arguments para a recebendo arguments'),
          ),
        ],
      ),
    );
  }
}
