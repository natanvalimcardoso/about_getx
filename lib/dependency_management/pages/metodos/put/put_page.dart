import 'package:about_getx/dependency_management/pages/metodos/put/put_controller.dart';
import 'package:about_getx/dependency_management/pages/metodos/put/put_controller_permanent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PutPage extends StatefulWidget {

  const PutPage({ Key? key }) : super(key: key);

  @override
  State<PutPage> createState() => _PutPageState();
}
class _PutPageState extends State<PutPage> {

  final controller = Get.put(PutController()); 
  final controller2 = Get.put(PutControllerPermanent(), permanent: true);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Put page'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Time put: ${controller.timeStamp}'),
                Text('Time put permanent: ${controller2.timeStamp}'),
                Text('Nome: ${controller2.name}'),
                ElevatedButton(
                  child: const Text('Salvar nome com instancia'),
                  onPressed: () {
                    setState(() {
                      controller2.name = 'Salvado';
                    });
                  },
                ),
              ],
            ),
           ),
       );
  }
}