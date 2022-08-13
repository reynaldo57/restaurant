

import 'package:flutter/material.dart';

class ProductAddEditAdminPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  List<Map<String, dynamic>> categories = [
    {"id": "Dsdsad",
      "category": "Sopas"
    },
    {"id": "jg",
      "category": "Bebidas"
    },
    {"id": "iuy",
      "category": "Entradas"
    },
  ];


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
                  onChanged: (Object? value){
                    print(value);
                  },
                  items: categories.map((e) => DropdownMenuItem(
                      child: Text(e["category"]),
                      value: e["id"],
                  )).toList()
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
