import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Básica'),
              onPressed: () {
                Navigator.of(context).pushNamed('/basico');
              },
            ),
            ElevatedButton(
              child: const Text('Put, Permanent, Tag'),
              onPressed: () {
                Navigator.of(context).pushNamed('/metodosMenu');  
                   
              },
            ),
          ],
        ),
      ),
    );
  }
}
