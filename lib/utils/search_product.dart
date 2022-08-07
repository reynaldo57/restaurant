import 'package:flutter/material.dart';

class SearchProduct extends SearchDelegate {

  List<Map<String, dynamic>> listProducts = [];
  String result = "";

  SearchProduct({required this.listProducts});

  List<String> names = ["Camila chapman", "Belinda Cameron"];

  @override
  String get searchFieldLabel => "Buscar Producto";

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      scaffoldBackgroundColor: Color(0xff1B1A21),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.white54,
          fontSize: 16.0
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Color(0xff1B1A21),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
    );
  }


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> suggestions = names.where((element) {
      return element.toLowerCase().contains(query.toLowerCase());
    }).toList();

    print(suggestions);

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext, int index) {
        return ListTile(
          title: Text(suggestions[index], style: TextStyle(color: Colors.white),),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Map<String, dynamic>> suggestions = listProducts.where((element) {
      return element["name"].toLowerCase().contains(query.toLowerCase());
    }).toList();

    print(listProducts);

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext, int index) {
        return ListTile(
          title: Text(suggestions[index]["name"], style: TextStyle(color: Colors.white),),
        );
      },
    );
  }
}
