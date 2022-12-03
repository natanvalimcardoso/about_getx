
import 'bindings_controller.dart';
import 'package:get/get.dart';

class BindingsExample  extends Bindings{
  
  @override
  void dependencies() {
    Get.put(BindingsController(nome: 'Inicializado dentro do bindings'));
  }
  
}