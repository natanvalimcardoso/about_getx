import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/basico/basico_home_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const MenuPage()),
        GetPage(name: '/basico', page: () =>  BasicoHomePage()),
      ],
    );
  }
}
