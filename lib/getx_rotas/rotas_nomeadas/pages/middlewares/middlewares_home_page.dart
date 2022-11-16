import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {
  const MiddlewaresHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Middlewares - HOME'),
      ),
      body: Center(
        child:ElevatedButton(
          child: const Text('Indo pra outra pagina'),
          onPressed: () {},
        ),
      ),
    );
  }
}
