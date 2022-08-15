

import 'package:flutter/material.dart';
import 'package:restaurant/services/firestore_service.dart';

class ProductAddEditAdminPage extends StatefulWidget {

  @override
  State<ProductAddEditAdminPage> createState() => _ProductAddEditAdminPageState();
}

class _ProductAddEditAdminPageState extends State<ProductAddEditAdminPage> {
  final _formKey = GlobalKey<FormState>();
  FirestoreService _categoryFirestoreService = new FirestoreService(collection: "categories");
  List<Map<String, dynamic>> categories = [];
  String selectCategory = "";

  @override
  void initState() {
    super.initState();
    getDataCategory();
  }

  getDataCategory(){
    _categoryFirestoreService.getCategories().then((value){
      categories = value;
      selectCategory = categories[0]["id"];
      setState(() {

      });

    });
  }

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
                DropdownButtonFormField<String>(
                  style: TextStyle(
                    color: Colors.black87
                  ),
                  decoration: InputDecoration(
                      labelText: "Categoria",
                      hintText: "--Selecciona una Categoria"
                  ),
                  value: selectCategory,
                  onChanged: (String? value){
                  },
                  items: categories.map((e) => DropdownMenuItem<String>(
                      child: Text(e["description"]),
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
