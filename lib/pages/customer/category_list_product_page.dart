import 'package:flutter/material.dart';

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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://comidasperuanas.net/wp-content/uploads/2020/12/Torta-Dona-Pepa.jpg"))),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Torta de Chocolate",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Torta de Chocolate y nueces con manjar acompañado de frutas de estacion",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffED9B00),
                              size: 16.0,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.timer,
                              color: Colors.white60,
                              size: 16.0,
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              "2min",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0),
                            ),
                          ],
                        )
                      ],
                    )),
                    Text(
                      "S/ 10.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
