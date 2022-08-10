


import 'package:flutter/material.dart';
import 'package:restaurant/services/firestore_service.dart';

class ModalAddCategory extends StatefulWidget {

  @override
  _ModalAddCategoryState createState() => _ModalAddCategoryState();
}

class _ModalAddCategoryState extends State<ModalAddCategory> {

  bool _order = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _categoryController = new TextEditingController();
  FirestoreService _firestoreService = new FirestoreService(collection: "categories");

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Agregar categoria"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _categoryController,
              decoration: InputDecoration(
                  hintText: "Categoria"
              ),
              validator: (String? value){

                if(value == null || value.isEmpty){
                  return "Campo Obligatorio";
                }
                return null;

              },
            ),
            // TextFormField(
            //   decoration: InputDecoration(
            //       hintText: "Descripcion"
            //   ),
            //   validator: (String? value){
            //
            //     if(value == null || value.isEmpty){
            //       return "Campo Descripcion obligatorio";
            //     }
            //     return null;
            //
            //   },
            // ),
            Row(
              children: [
                Text("Order: "),
                Checkbox(
                    value: _order,
                    onChanged: (bool? value){
                      _order = value!;
                      setState(() {

                      });
                    }),
              ],
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text(
              "Cancelar"
          ),
        ),
        TextButton(
          onPressed: (){

            if(_formKey.currentState!.validate());
            _firestoreService.addFirestore({
              "description": _categoryController.text,
              "order": _order,
            });
          },
          child: Text(
              "Agregar"
          ),
        ),
      ],
    );
  }
}
