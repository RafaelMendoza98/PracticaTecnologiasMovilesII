import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  final TextInputType keyboardType;
  final IconData icono;
  final String placeHolder;
  final bool ispassword;
  final TextEditingController textController;
  const InputLogin({Key? key,required this.keyboardType, required this.icono,
   required this.placeHolder, 
   this.ispassword = false, required this.textController}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5,left: 5,bottom: 5, right: 15),
            child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: keyboardType,
        //Reemplazar el texto por *
        obscureText: ispassword,
        style: TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
            prefixIcon: Icon(
              icono,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: placeHolder,
            hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
      ),

    );
  }
}
