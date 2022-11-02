import 'package:about_getx/getx_rotas/to/page_um_to.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Entrar'),
              onPressed: () {
               Get.to(const PageUmTo());
              },
            ),
          ],
        ),
      ),
    );
  }
}
