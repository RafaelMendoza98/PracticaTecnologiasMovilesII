import 'package:proyecto_tecnologias_moviles_2/helpers/mostrarAlerta.dart';
import 'package:proyecto_tecnologias_moviles_2/widgets/wid_button.dart';
import 'package:proyecto_tecnologias_moviles_2/widgets/wid_input.dart';
import 'package:proyecto_tecnologias_moviles_2/widgets/wid_label.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_tecnologias_moviles_2/services/authenticator.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_tecnologias_moviles_2/widgets/wid_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 47, 40, 1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            //Toda la pantalla
            height: MediaQuery.of(context).size.height * .9,
            child: Column(
              children: [
                WidLogo(texto: 'Iniciar sesion'),
                _Form(),
                WidLabel(
                  texto: 'Crear Cuenta',
                  color: Colors.black87,
                  ruta: 'register',
                  Texto: '',
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
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: true);
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          WidInput(
            icono: Icons.mail_outline,
            placeHolder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          WidInput(
            icono: Icons.lock_outline,
            placeHolder: 'Contraseña',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          WidButton(
            texto: 'Ingresar',
            onPressed: authService.autenticando
                ? () => {}
                : () async {
                    FocusScope.of(context).unfocus();
                    final loginRes =
                        await authService.login(emailCtrl.text, passCtrl.text);
                    if (loginRes) {
                      Navigator.pushReplacementNamed(context, 'homepage');
                    } else {
                      //Mostrar alerta
                      mostrarAlerta(context, 'Error en el login',
                          'Credemnciales incorrectas');
                    }
                  },
          ),
          WidButton(
              texto: 'Crear Cuenta',
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'register');
              })
        ],
      ),
    );
  }
}
