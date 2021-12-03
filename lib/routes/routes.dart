import 'package:flutter/material.dart';
import 'package:proyecto_tecnologias_moviles_2/pages/home_page.dart';
import 'package:proyecto_tecnologias_moviles_2/pages/login_page.dart';
import 'package:proyecto_tecnologias_moviles_2/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'homepage': (_) => HomePage(),
};
