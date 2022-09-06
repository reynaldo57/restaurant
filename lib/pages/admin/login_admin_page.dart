

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginAdminPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  loginEmailPassword() async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "mandarina@gmail.com",
        password: "3volution",
      );
      print(userCredential);
    } on FirebaseAuthException catch (e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    "Iniciar Sesion",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Correo electronico",
                        hintText: "Correo Electronico",
                      ),
                      validator: (String? value){
                        if(value!.isEmpty || value == null){
                          return "El Campo es Obligatorio";
                        }
                        return null;
                    },
                    ),
                  SizedBox(
                    height: 14.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      hintText: "Contraseña",
                    ),
                    validator: (String? value){
                      if(value!.isEmpty || value == null){
                        return "El Campo es Obligatorio";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: (){
                        // if(_formKey.currentState!.validate()){
                        //
                        // }
                        loginEmailPassword();
                      },
                      child: Text(
                        "Iniciar Sesion",
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
