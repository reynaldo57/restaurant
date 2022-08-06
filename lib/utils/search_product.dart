


import 'package:flutter/material.dart';

class SearchProduct extends SearchDelegate{

  String result = "";


  List<String> names = [
    "Camila chapman", "Belinda Cameron"

  ];




  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: (){
          query = "";
        },
      )
    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext, int index){
        return ListTile(
          title: Text("Hola"),
        );
      },
    );
}

@override
Widget buildSuggestions(BuildContext context) {
    
    List<String> suggestions = names.where((element){
      return element.contains(query);
    }).toList();

    print(suggestions);
    
    
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext, int index){
      return ListTile(
        title: Text("Hola"),
      );
    },
  );
}

}