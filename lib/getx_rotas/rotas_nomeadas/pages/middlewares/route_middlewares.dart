import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

  //* Método que será executado quando a rota for chamada
  @override
  GetPage? onPageCalled(GetPage? page) {
    print('//------------------- CHEGOU AQUI -------------------//');
    return super.onPageCalled(page);
  }

  //* Método que executa após a rota ser chamada
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('//------------------- ONPANGE AQUI -------------------//');

    return super.onPageBuildStart(page);
  }

  //* IMPORTANTE!!! REDIRECT
  //* Usado para validações etc

  @override
  RouteSettings? redirect(String? route,) {
    if (route == '/MiddlewaresHomePage') {
      return RouteSettings(name: '/page_nomeada_um');
    }else{
      return null;
    }
  }
}
