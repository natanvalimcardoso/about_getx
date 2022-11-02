import 'package:about_getx/getx_rotas/rotas_nomeadas/pages/inicial/page_nomeada_um.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      ],
    );
  }
}
