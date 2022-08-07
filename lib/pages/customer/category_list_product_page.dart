import 'package:flutter/material.dart';
import 'package:restaurant/widgets/item_search_widget.dart';

class CategoryListProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1A21),
      appBar: AppBar(
        title: Text(
          "Postres",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ItemSearchWidget(
                  image: "https://comidasperuanas.net/wp-content/uploads/2020/12/Torta-Dona-Pepa.jpg",
                  title: "Torta de Chocolate",
                  subtitle: "Torta de Chocolate y nueces con muchas Almendras",
                  time: "4.5",
                  rate: "12.00",
                  price: "2.00"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
