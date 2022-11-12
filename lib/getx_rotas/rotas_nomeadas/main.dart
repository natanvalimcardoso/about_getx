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

        //* Ele da possibilidade de criar um children para a rota, para assim concatenar com a rota principal
        //* Forma Hierarquica, onde a rota principal é a raiz e as outras são filhas
        //* Seria o mesmo que criasse: /envioArgumentsPage/recebendoArgumentosPage
        GetPage( name: '/envioArgumentsPage', page: () =>  EnvioArgumentsPage(),
          children: [
            GetPage(name: '/recebendoArgumentosPage', page: () =>  RecebendoArgumentosPage()),
            GetPage(name: '/recebendoQueryArgumentsPage', page: () => const RecebendoQueryArgumentsPage()),
            GetPage(name: '/recebendoPathArgumentsPage', page: () => const RecebendoPathArgumentsPage())
          ],
        ),
      ],
    );
  }
}
