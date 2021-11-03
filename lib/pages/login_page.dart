import 'package:flutter/material.dart';
import 'package:proyecto_tecnologias_moviles_2/widgets/wid_inputs_login.dart';
import 'package:proyecto_tecnologias_moviles_2/widgets/wid_label.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(50, 255, 224, 0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                WidLabel(Texto: 'iniciar sesion', color: Color.fromARGB(254, 200, 254, 1)
                ),
                InputLogin(
                  keyboardType: TextInputType.text, 
                  icono: Icons.lock_outline, placeHolder: 'Email', 
                  ispassword: false,
                   textController: emailController
                  ),
                  
                InputLogin(
                  keyboardType: TextInputType.text, 
                  icono: Icons.lock_outline, placeHolder: 'Password', 
                  ispassword: true,
                   textController: emailController
                  ),
              ],
            ),
        ),
        ) ,
        ),
    );
  }
}
