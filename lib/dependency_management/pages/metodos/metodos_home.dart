import 'package:about_getx/dependency_management/main_app.dart';
import 'package:flutter/material.dart';

class MetodosHome extends StatelessWidget {
  const MetodosHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Métodos-Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Put - metodo'),
              onPressed: () {
                Navigator.of(context).pushNamed('/metodosMenu/put');
              },
            ),
          ],
        ),
      ),
    );
  }
}
