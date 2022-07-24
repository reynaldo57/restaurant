



import 'package:flutter/material.dart';

class ItemCarouselWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 14.0),
        constraints: BoxConstraints(maxWidth: 200.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  18.0,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    color: Colors.black12.withOpacity(
                      0.04,
                    ),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.parrillascuadra20.com/wp-content/uploads/2021/08/parrilla-mixta.jpg"),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 4),
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 3.0),
                      decoration: BoxDecoration(
                          color: Color(0xffED9B00),
                          borderRadius:
                          BorderRadius.circular(26.0)),
                      child: Text(
                        "-30% Desc",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Costillar de Cordero",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Costillar de Cordero con Papas Nativas, Costillar de Cordero con Papas Nativas",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.white70,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("S/ 30.00",
                    style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.bold)),
                Container(
                  child: Row(
                    children: [
                      Text("4.6",
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.star,
                        size: 18.0,
                        color: Color(0xffED9B00),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
