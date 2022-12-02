import 'package:flutter/material.dart';

class MetodosHome extends StatelessWidget {
  const MetodosHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            ElevatedButton(
              child: const Text('LazyPut - metodo'),
              onPressed: () {
                Navigator.of(context).pushNamed('/metodosMenu/lazyPut');
              },
            ),
          ],
        ),
      ),
    );
  }
}
