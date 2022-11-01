import 'package:flutter/material.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OF - pagina 2'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para pagina 3'),
          onPressed: () {},
        ),
      ),
    );
  }
}
