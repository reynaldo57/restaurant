

import 'package:flutter/material.dart';

class RegisterAdminPage extends StatefulWidget {

  @override
  _RegisterAdminPageState createState() => _RegisterAdminPageState();
}

class _RegisterAdminPageState extends State<RegisterAdminPage> {
  final _formKey = GlobalKey<FormState>();

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
                        },
                        child: Text(
                          "registrars credenciales",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),



                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

}
