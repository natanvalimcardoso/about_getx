import 'package:flutter/material.dart';

class EnvioArgumentsPage extends StatelessWidget {
  const EnvioArgumentsPage({Key? key}) : super(key: key);

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
              onPressed: () {},
            ),
             ElevatedButton(
              child: const Text('Path Parameters'),
              onPressed: () {},
            ),
             ElevatedButton(
              child: const Text('Query Parameters'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
