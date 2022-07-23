import 'package:flutter/material.dart';
import 'package:restaurant/pages/customer/category_list_product_page.dart';
import 'package:restaurant/pages/customer/product_detail_page.dart';
import 'package:restaurant/widgets/text_normal_widget.dart';

class HomeCustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1B1A21),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //header
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage("assets/images/ceviche logo.jpg"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          H1(text: "Ceviche Chorrillos"),
                          H2(text: "El mejor Pescado")
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                //categories
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                              backgroundColor: Color(0xffED9B00),
                              label: Container(
                                height: 26.0,
                                width: 50.0,
                                child: Center(
                                  child: Text(
                                    "Todos",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onSelected: (bool selected) {}),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            backgroundColor: Color(0xff1B1A21),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                              side: BorderSide(
                                color: Color(0xff1B1A21),
                              ),
                            ),
                            label: Container(
                              height: 26.0,
                              child: Center(
                                child: Text(
                                  "Postres",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            onSelected: (bool selected) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryListProductPage()));
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                              backgroundColor: Color(0xff1B1A21),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                side: BorderSide(
                                  color: Color(0xff1B1A21),
                                ),
                              ),
                              label: Container(
                                height: 26.0,
                                child: Center(
                                  child: Text(
                                    "Bebidas",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              onSelected: (bool selected) {}),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                              backgroundColor: Color(0xff1B1A21),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                side: BorderSide(
                                  color: Color(0xff1B1A21),
                                ),
                              ),
                              label: Container(
                                height: 26.0,
                                child: Center(
                                  child: Text(
                                    "Entradas",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              onSelected: (bool selected) {}),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            backgroundColor: Color(0xff1B1A21),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                              side: BorderSide(
                                color: Color(0xff1B1A21),
                              ),
                            ),
                            label: Container(
                              height: 26.0,
                              child: Center(
                                child: Text(
                                  "Postres",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            onSelected: (bool selected) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                              backgroundColor: Color(0xff1B1A21),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                side: BorderSide(
                                  color: Color(0xff1B1A21),
                                ),
                              ),
                              label: Container(
                                height: 26.0,
                                child: Center(
                                  child: Text(
                                    "Platos de Fondo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              onSelected: (bool selected) {}),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                //Promotions

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
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
                      Container(
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Entradas",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Source Sans Pro Black'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(),
                            ),
                          );
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
                                        "https://iperu.pe/wp-content/uploads/2020/05/tequenos-peruanos-con-guacamole_800x534.jpg"),
                                  ),
                                ),
                                // child: Stack(
                                //   children: [
                                //     Positioned(
                                //       right: 0,
                                //       child: Container(
                                //         margin: EdgeInsets.symmetric(
                                //             horizontal: 10.0, vertical: 4),
                                //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                                //         decoration: BoxDecoration(
                                //             color: Color(0xffED9B00),
                                //             borderRadius: BorderRadius.circular(26.0)
                                //         ),
                                //         child: Text(
                                //           "-30% Desc",
                                //           style: TextStyle(
                                //             fontSize: 15.0,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       ),
                                //     )
                                //   ],
                                // ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tequeños",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Acompañado de crema de aguacate",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("S/ 12.00",
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
                      ),
                      Container(
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
                                      "https://iperu.pe/wp-content/uploads/2020/05/tequenos-peruanos-con-guacamole_800x534.jpg"),
                                ),
                              ),
                              // child: Stack(
                              //   children: [
                              //     Positioned(
                              //       right: 0,
                              //       child: Container(
                              //         margin: EdgeInsets.symmetric(
                              //             horizontal: 10.0, vertical: 4),
                              //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                              //         decoration: BoxDecoration(
                              //             color: Color(0xffED9B00),
                              //             borderRadius: BorderRadius.circular(26.0)
                              //         ),
                              //         child: Text(
                              //           "-30% Desc",
                              //           style: TextStyle(
                              //             fontSize: 15.0,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Tequeños",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Acompañado de crema de aguacate",
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
                                Text("S/ 12.00",
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
                      Container(
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
                                      "https://iperu.pe/wp-content/uploads/2020/05/tequenos-peruanos-con-guacamole_800x534.jpg"),
                                ),
                              ),
                              // child: Stack(
                              //   children: [
                              //     Positioned(
                              //       right: 0,
                              //       child: Container(
                              //         margin: EdgeInsets.symmetric(
                              //             horizontal: 10.0, vertical: 4),
                              //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                              //         decoration: BoxDecoration(
                              //             color: Color(0xffED9B00),
                              //             borderRadius: BorderRadius.circular(26.0)
                              //         ),
                              //         child: Text(
                              //           "-30% Desc",
                              //           style: TextStyle(
                              //             fontSize: 15.0,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Tequeños",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Acompañado de crema de aguacate",
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
                                Text("S/ 12.00",
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
                    ],
                  ),
                ),
                //section 2
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Bebidas",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Source Sans Pro Black'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
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
                                      "https://www.cardamomo.news/__export/1628523794369/sites/debate/img/2021/08/09/caipirinha_receta_crop1628523749172.jpeg_1753094345.jpeg"),
                                ),
                              ),
                              // child: Stack(
                              //   children: [
                              //     Positioned(
                              //       right: 0,
                              //       child: Container(
                              //         margin: EdgeInsets.symmetric(
                              //             horizontal: 10.0, vertical: 4),
                              //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                              //         decoration: BoxDecoration(
                              //             color: Color(0xffED9B00),
                              //             borderRadius: BorderRadius.circular(26.0)
                              //         ),
                              //         child: Text(
                              //           "-30% Desc",
                              //           style: TextStyle(
                              //             fontSize: 15.0,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Caipirinha",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Con Mucho Hielo",
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
                                Text("S/ 24.00",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  child: Row(
                                    children: [
                                      Text("4.2",
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
                      Container(
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
                                      "https://www.cardamomo.news/__export/1628523794369/sites/debate/img/2021/08/09/caipirinha_receta_crop1628523749172.jpeg_1753094345.jpeg"),
                                ),
                              ),
                              // child: Stack(
                              //   children: [
                              //     Positioned(
                              //       right: 0,
                              //       child: Container(
                              //         margin: EdgeInsets.symmetric(
                              //             horizontal: 10.0, vertical: 4),
                              //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                              //         decoration: BoxDecoration(
                              //             color: Color(0xffED9B00),
                              //             borderRadius: BorderRadius.circular(26.0)
                              //         ),
                              //         child: Text(
                              //           "-30% Desc",
                              //           style: TextStyle(
                              //             fontSize: 15.0,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Caipirinha",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Con Mucho Hielo",
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
                                Text("S/ 24.00",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  child: Row(
                                    children: [
                                      Text("4.2",
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
                      Container(
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
                                      "https://www.cardamomo.news/__export/1628523794369/sites/debate/img/2021/08/09/caipirinha_receta_crop1628523749172.jpeg_1753094345.jpeg"),
                                ),
                              ),
                              // child: Stack(
                              //   children: [
                              //     Positioned(
                              //       right: 0,
                              //       child: Container(
                              //         margin: EdgeInsets.symmetric(
                              //             horizontal: 10.0, vertical: 4),
                              //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                              //         decoration: BoxDecoration(
                              //             color: Color(0xffED9B00),
                              //             borderRadius: BorderRadius.circular(26.0)
                              //         ),
                              //         child: Text(
                              //           "-30% Desc",
                              //           style: TextStyle(
                              //             fontSize: 15.0,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Caipirinha",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Con Mucho Hielo",
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
                                Text("S/ 24.00",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  child: Row(
                                    children: [
                                      Text("4.2",
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ));
  }
}
