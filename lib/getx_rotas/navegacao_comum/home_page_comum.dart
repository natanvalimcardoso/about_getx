import 'package:about_getx/getx_rotas/navegacao_comum/back/back_page.dart';
import 'package:about_getx/getx_rotas/navegacao_comum/to/to_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageComum extends StatelessWidget {
  const HomePageComum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação Comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('TO (Push)'),
              onPressed: () {
                Get.to(const ToHomePage());
              },
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Get.to(const BackPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
