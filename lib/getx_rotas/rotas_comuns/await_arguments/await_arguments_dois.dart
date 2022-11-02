import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitArgumentsDois extends StatelessWidget {
  AwaitArgumentsDois({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
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
          ElevatedButton(
            child: const Text('Button label'),
            onPressed: () {
              Get.back(result: _controller.text);
            },
          ),
        ],
      ),
    );
  }
}
