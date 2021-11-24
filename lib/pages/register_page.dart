import 'package:pruebaproye1/widgets/custom_button.dart';
import 'package:pruebaproye1/widgets/custom_input.dart';
import 'package:pruebaproye1/widgets/custom_label.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            //Toda la pantalla
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                _Form(),
                CustomLabel(
                  texto: 'Crear Cuenta',
                  color: Colors.blue,
                  ruta: 'login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nombreCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInput(
          icono: Icons.people_outline,
          placeHolder: 'Nombre',
          keyboardType: TextInputType.text,
          textController: nombreCtrl,
        ),
        CustomInput(
          icono: Icons.mail_outline,
          placeHolder: 'Email',
          keyboardType: TextInputType.emailAddress,
          textController: emailCtrl,
        ),
        CustomInput(
          icono: Icons.lock_outline,
          placeHolder: 'Contraseña',
          keyboardType: TextInputType.text,
          textController: passCtrl,
          isPassword: true,
        ),
        CustomButton(
            texto: 'Registrar',
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
              print(nombreCtrl.text);
            })
      ],
    );
  }
}
