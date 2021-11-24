import 'package:flutter/material.dart';
import 'package:pruebaproye1/pages/login_page.dart';
import 'package:pruebaproye1/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
};
