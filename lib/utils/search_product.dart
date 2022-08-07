import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restaurant/pages/customer/product_detail_page.dart';
import 'package:restaurant/widgets/item_search_widget.dart';

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
    List<Map<String, dynamic>> suggestions = listProducts.where((element) {
      return element["name"].toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext, int index) {
        return ItemSearchWidget(
          image: suggestions[index]['image'],
          title: suggestions[index]['name'],
          subtitle: suggestions[index]['description'],
          time: suggestions[index]['time'].toStringAsFixed(1),
          rate: suggestions[index]['rate'].toStringAsFixed(1),
          price: suggestions[index]['price'].toStringAsFixed(2),
          goTo: ProductDetailPage(product: suggestions[index],),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Map<String, dynamic>> suggestions = listProducts.where((element) {
      return element["name"].toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext, int index) {
        return ItemSearchWidget(
          image: suggestions[index]['image'],
          title: suggestions[index]['name'],
          subtitle: suggestions[index]['description'],
          time: suggestions[index]['time'].toStringAsFixed(1),
          rate: suggestions[index]['rate'].toStringAsFixed(1),
          price: suggestions[index]['price'].toStringAsFixed(2),
          goTo: ProductDetailPage(product: suggestions[index],),
        );
      },
    );
  }
}
