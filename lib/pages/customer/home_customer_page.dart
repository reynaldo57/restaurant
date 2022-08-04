import 'package:flutter/material.dart';
import 'package:restaurant/pages/customer/category_list_product_page.dart';
import 'package:restaurant/pages/customer/product_detail_page.dart';
import 'package:restaurant/services/firestore_service.dart';
import 'package:restaurant/widgets/category_filter_widget.dart';
import 'package:restaurant/widgets/item_carousel_widget.dart';
import 'package:restaurant/widgets/text_normal_widget.dart';

class HomeCustomerPage extends StatelessWidget {
  FirestoreService _categoriesFirestoreService = new FirestoreService(collection: 'categories');
  FirestoreService _productFirestoreService = new FirestoreService(collection: 'products');


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
                          H2(text: "El mejor Pescado"),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      IconButton(
                        onPressed: () {
                          // FirestoreService _firestoreService =
                          //     new FirestoreService();
                          // _firestoreService.getCategories();
                        },
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
                FutureBuilder(
                  future: _categoriesFirestoreService.getCategories(),
                  builder: (BuildContext, AsyncSnapshot snap) {
                    if (snap.hasData) {
                      List<Map<String, dynamic>> categories = snap.data;
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categories
                                  .map<Widget>(
                                    (e) => CategoryFilterWidget(
                                  primary: e["order"],
                                  text: e["description"],
                                  goTo: CategoryListProductPage(),
                                ),
                              )
                                  .toList(),
                            ),
                            // child: Row(
                            //   children: [
                            //     CategoryFilterWidget(
                            //       text: "Todos",
                            //       primary: true,
                            //       goTo: CategoryListProductPage(),
                            //     ),
                            //     CategoryFilterWidget(
                            //       text: "Postres",
                            //       primary: false,
                            //       goTo: CategoryListProductPage(),
                            //     ),
                            //
                            //
                            //   ],
                            // ),
                            ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),

                //Promotions

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemCarouselWidget(
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX9g1Mdod7v9Uq2FPvd47wEU0hzKXbtjbHrQ&usqp=CAU",
                        title: "Costillar de cordero",
                        subtitle:
                            "Costillar de cordero con especias y mucha papa frita",
                        price: "50.00",
                        rate: "4.6",
                        discount: "50.0",
                        goTo: ProductDetailPage(),
                      ),
                      ItemCarouselWidget(
                        image:
                            "https://www.el10.pe/wp-content/uploads/2020/10/parrilla-casa.jpg",
                        title: "Costilar de cordero",
                        subtitle:
                            "Costillar de cordero con especias y mucha papa frita",
                        price: "50.00",
                        rate: "4.6",
                        goTo: ProductDetailPage(),
                      ),
                      ItemCarouselWidget(
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX9g1Mdod7v9Uq2FPvd47wEU0hzKXbtjbHrQ&usqp=CAU",
                        title: "Costilar de cordero",
                        subtitle:
                            "Costillar de cordero con especias y mucha papa frita",
                        price: "50.00",
                        rate: "4.6",
                        discount: "50.0",
                        goTo: ProductDetailPage(),
                      ),
                      ItemCarouselWidget(
                        image:
                            "https://www.el10.pe/wp-content/uploads/2020/10/parrilla-casa.jpg",
                        title: "Costilar de cordero",
                        subtitle:
                            "Costillar de cordero con especias y mucha papa frita",
                        price: "50.00",
                        rate: "4.6",
                        goTo: ProductDetailPage(),
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

                FutureBuilder(
                  future: _productFirestoreService.getProductHome(),
                  builder: (BuildContext context, AsyncSnapshot snap){
                    if(snap.hasData){
                      List<Map<String, dynamic>> products = snap.data;
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: products.map<Widget>((e) => ItemCarouselWidget(
                            image: e["image"],
                            title: e["name"],
                            subtitle: e["description"],
                            price: e["price"].toStringAsFixed(2),
                            rate: e["rate"].toStringAsFixed(1),
                            goTo: ProductDetailPage(),
                          ),).toList(),
                        ),
                      );
                    }
                    return Center(child: CircularProgressIndicator(),);
                  }
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
                      ItemCarouselWidget(
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX9g1Mdod7v9Uq2FPvd47wEU0hzKXbtjbHrQ&usqp=CAU",
                        title: "Costilar de cordero",
                        subtitle:
                            "Costillar de cordero con especias y mucha papa frita",
                        price: "50.00",
                        rate: "4.6",
                        discount: "50.0",
                        goTo: ProductDetailPage(),
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
