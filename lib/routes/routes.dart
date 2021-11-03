import 'package:flutter/material.dart';
import 'package:proyecto_tecnologias_moviles_2/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'register': (_) => RegisterPage(),
};
