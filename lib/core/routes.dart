import 'package:flutter/material.dart';
import 'package:flutter_exemplo_bloc/features/home/view/home_page.dart';

class AppRoutes {
  // Definimos aqui os nomes das rotas
  static const String home = '/';

  // Todas as rotas da aplicação são registradas aqui
  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
  };
}
