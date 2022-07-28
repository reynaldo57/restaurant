import 'package:flutter/material.dart';
import 'package:restaurant/common/colors.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container (
              height: 340,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://comidasvenezolanas.org/wp-content/uploads/2021/02/parrilla-venezolana_700x466.jpg")
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff1B1A21),
                          Colors.transparent
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment(0, 0),
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3.0),
                          decoration: BoxDecoration(
                            color: BRAND_PRIMARY,
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Text(
                            "Platos de Fondo",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Costillar de Cordero",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("S./ 50.00",
                                style: TextStyle(
                                    color: Colors.white70,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                                ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.timer, size: 16, color: Colors.white70,),
                                  SizedBox(width: 3.0,),
                                  Text("10min",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Icon(Icons.star, size: 16, color: BRAND_PRIMARY,),
                                  SizedBox(width: 3.0,),
                                  Text("4.5",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            )


                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    "Descripcion General",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.0,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Costillar de cordero de la maxima calidad"
                      "acompañado de las mejores especies y guardiciones",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    "Ingredientes Principales",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.0,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  "- Carne de Cordero Premium",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "- Ensaladas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "- Papas Nativas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "- Guarniciones Extras",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
