

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/pages/admin/home_admin_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginAdminPage extends StatefulWidget {

  @override
  State<LoginAdminPage> createState() => _LoginAdminPageState();
}

class _LoginAdminPageState extends State<LoginAdminPage> {
  final _formKey = GlobalKey<FormState>();

  signOut() async{
    await FirebaseAuth.instance.signOut();
  }



  signInEmailPassword() async {
    try{
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "mandarina@gmail.com",
        password: "3volution",
      );
      _prefs.setBool("isLogin", true);
      //print("DATA AUTH::: ${await userCredential.user!.getIdToken()}");
      print("DATA AUTH::: ${userCredential.user}");

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeAdminPage()), (route) => false);

    } on FirebaseAuthException catch (e){
      if(e.code == "user-not-found"){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Elcorreo electronico no existe",
            ),
            backgroundColor: Colors.redAccent,
          ),
        );
      }else if(e.code == "wrong-password"){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Contraseña  incorrecta",
            ),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
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
                        signInEmailPassword();
                      },
                      child: Text(
                        "Iniciar Sesion",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: (){
                        // if(_formKey.currentState!.validate()){
                        //
                        // }
                        //checkLogin();
                      },
                      child: Text(
                        "Verificar",
                      ),
                    ),
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
