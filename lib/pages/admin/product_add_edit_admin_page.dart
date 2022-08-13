

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
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Descripcion",
                      hintText: "Descripcion del Producto"
                  ),
                  validator: (String? value){
                    if(value!.isEmpty || value == null){
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                      labelText: "Categoria",
                      hintText: "--Selecciona una Categoria"
                  ),
                  value: "Hola",
                  onChanged: (String? value){
                    print(value);
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text("Hola"),
                      value: "Hola",
                      onTap: (){

                      },
                    ),
                    DropdownMenuItem(
                      child: Text("Hola 2"),
                      value: "Hola 2",
                      onTap: (){

                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Precio",
                      hintText: "Precio del Producto"
                  ),
                  validator: (String? value){
                    if(value!.isEmpty || value == null){
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Tiempo",
                      hintText: "Tiempo del Producto"
                  ),
                  validator: (String? value){
                    if(value!.isEmpty || value == null){
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Puntaje",
                      hintText: "Puntaje del Producto"
                  ),
                  validator: (String? value){
                    if(value!.isEmpty || value == null){
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
