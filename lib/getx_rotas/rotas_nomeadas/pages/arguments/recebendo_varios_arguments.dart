import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecebendoVariosArguments extends StatelessWidget {
  RecebendoVariosArguments({Key? key}) : super(key: key);

  var variosArguments = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Varios Arguments'),
      ),
      body: Column(
        children: [
          Text(variosArguments.elementAt(0).name),
          Text(variosArguments.elementAt(0).email),
          Text(variosArguments.elementAt(1)),
          Text(variosArguments.elementAt(2).toString()),
          Text(
            variosArguments.elementAt(3).elementAt(0),
          ),
        ],
      ),
    );
  }
}
