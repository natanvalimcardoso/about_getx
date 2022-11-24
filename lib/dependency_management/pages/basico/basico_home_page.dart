import 'package:about_getx/dependency_management/pages/basico/basico_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class BasicoHomePage extends StatelessWidget {
  BasicoHomePage({Key? key}) : super(key: key);

  final controller = Get.put(BasicoController()); //Forma mais basica de possuir uma controller que possa ser utilizado em outros lugares

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico - Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: ((context, child) {
                return Text(
                  controller.nome,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }),
            ),
            ElevatedButton(
              child: const Text(
                'Mudar Nome',
              ),
              onPressed: () {
                controller.alterarNome('Natan valim Cardoso');
              },
            ),
            InformacaoHomePage()
          ],
        ),
      ),
    );
  }
}

class InformacaoHomePage extends StatelessWidget {
  const InformacaoHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text('Widget Interno'),
          ElevatedButton(
            child: const Text('Button label'),
            onPressed: () {
              Get.find<BasicoController>().alterarNome('Mudei no widget interno');
            },
          ),
        ],
      ),
    );
  }
}
