import 'package:about_getx/dependency_management/pages/metodos/metodos_home.dart';
import 'package:about_getx/dependency_management/pages/metodos/put/put_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/basico/basico_home_page.dart';
import 'pages/menu_page.dart';
import 'pages/metodos/lazyput/lazy_put.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const MenuPage()),
        GetPage(name: '/basico', page: () => BasicoHomePage()),
        GetPage(
          name: '/metodosMenu',
          page: () => const MetodosHome(),
          children: [
            GetPage(name: '/put', page: () => const PutPage()),
            GetPage(name: '/lazyPut', page: () =>  LazyPut()),
          ],
        ),
      ],
    );
  }
}
