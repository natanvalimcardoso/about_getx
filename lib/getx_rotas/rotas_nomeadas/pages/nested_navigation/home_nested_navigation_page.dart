import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNestedNavigationPage extends StatelessWidget {
  final currentBottomNavIndex = 0.obs;

  HomeNestedNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - Nested Navigation - Page'),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: currentBottomNavIndex.value,
          onTap: (value) {
            switch (value) {
              case 0:
                Get.offNamed('/apple', id: 1);
                break;
              case 1:
                Get.toNamed('/android', id: 1);
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.android),
              label: 'Android',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apple),
              label: 'Apple',
            ),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          return null;
        
          // Widget page;
          // Transition transition = Transition.cupertino;

          // if (settings.name == '/') {
          //   page == const ApplePage();
          // } else if (settings.name == '/android') {
          //   page == const AndroidPage();
          // } else {
          //   page == const Text('Pagina não encontrada');
          // }

          // return GetPageRoute(
          //   page: () => page,
          //   transition: transition,
          // );
        },
      ),
    );
  }
}
