


import 'package:flutter/material.dart';
import 'package:restaurant/services/firestore_service.dart';

class ModalAddCategory extends StatefulWidget {

  @override
  _ModalAddCategoryState createState() => _ModalAddCategoryState();
}

class _ModalAddCategoryState extends State<ModalAddCategory> {

  bool _order = false;
  FirestoreService _firestoreService = new FirestoreService(collection: "categories");

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Agregar categoria"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "Categoria"
            ),
          ),
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
            _firestoreService.addFirestore({
              "description": "sopas",
              "order": false,
            });
          },
          child: Text(
              "Cancelar"
          ),
        ),
      ],
    );
  }
}
