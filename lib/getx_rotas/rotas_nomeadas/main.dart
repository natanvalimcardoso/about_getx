import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/arguments/envio_arguments_page.dart';
import 'pages/arguments/recebendo_argumentos_page.dart';
import 'pages/arguments/recebendo_path_arguments_page.dart';
import 'pages/arguments/recebendo_query_arguments_page.dart';
import 'pages/basica/page_nomeada_um.dart';
import 'pages/home_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => const HomeMenu()),
        GetPage(name: '/page_nomeada_um', page: () => const PageNomeadaUm()),
        GetPage(name: '/envioArgumentsPage', page: () => const EnvioArgumentsPage()),
        GetPage(name: '/recebendoArgumentosPage', page: () => const RecebendoArgumentosPage()),
        GetPage(name: '/recebendoPathArgumentsPage', page: () => const RecebendoPathArgumentsPage()),
        GetPage(name: '/recebendoQueryArgumentsPage', page: () => const RecebendoQueryArgumentsPage()),
      ],
    );
  }
}
