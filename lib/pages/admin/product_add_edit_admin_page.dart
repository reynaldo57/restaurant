

import 'package:flutter/material.dart';

class ProductAddEditAdminPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Productos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_formKey.currentState!.validate()){

          }
        },
        child: Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Producto",
                    hintText: "Nombre del Producto"
                  ),
                  validator: (String? value){
                    if(value!.isEmpty || value == null){
                      return "Completar el campo";
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
