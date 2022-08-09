


import 'package:flutter/material.dart';

class ModalAddCategory extends StatefulWidget {

  @override
  _ModalAddCategoryState createState() => _ModalAddCategoryState();
}

class _ModalAddCategoryState extends State<ModalAddCategory> {

  bool _order = false;

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
          onPressed: (){},
          child: Text(
              "Cancelar"
          ),
        ),
      ],
    );
  }
}
