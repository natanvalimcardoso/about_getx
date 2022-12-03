import 'package:about_getx/dependency_management/pages/bindings/bindings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - Bindings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<BindingsController>().nome),
          ],
        ),
      ),
    );
  }
}
