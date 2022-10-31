import 'package:about_getx/getx_rotas/aula_1/pages/page1.dart';
import 'package:about_getx/getx_rotas/aula_1/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Pagina um'),
              onPressed: () {
                Get.to(const Page1());
              },
            ),
            ElevatedButton(
              child: const Text('Pagina Dois'),
              onPressed: () {
                Get.to(const Page2(),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
