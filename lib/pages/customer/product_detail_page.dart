import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1A21),
      appBar: AppBar(
        title: Text(
            "Detalle del Producto",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
