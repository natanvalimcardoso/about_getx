import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenu extends StatelessWidget {

  const HomeMenu({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Rotas Nomeadas'),),
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Page nomeada um'),
                  onPressed: () {
                    Get.toNamed('/page_nomeada_um');
                  },
                ),
              ],
             ),
           ),
       );
  }
}