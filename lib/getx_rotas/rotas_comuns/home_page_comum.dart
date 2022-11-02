import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'arguments/enviando_arguments.dart';
import 'await_arguments/await_arguments_um.dart';
import 'back/back_page.dart';
import 'off/off_home_page.dart';
import 'offAll/offall_home_page.dart';
import 'to/to_home_page.dart';

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
            ElevatedButton(
              child: const Text('Off'),
              onPressed: () {
                Get.to(const OffHomePage());
              },
            ),
            ElevatedButton(
              child: const Text('Off All'),
              onPressed: () {
                Get.to(const OffAllHomePage());
              },
            ),
            //* ----------------- Enviando parâmetros ----------------- *//
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Arguments'),
              onPressed: () {
                Get.to(EnviandoArguments());
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Arguments Await'),
              onPressed: () {
                Get.to( const AwaitArgumentsUm());
              },
            ),
          ],
        ),
      ),
    );
  }
}
