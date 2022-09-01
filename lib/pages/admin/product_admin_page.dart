

import 'package:flutter/material.dart';
import 'package:restaurant/pages/admin/product_add_edit_admin_page.dart';
import 'package:restaurant/services/firestore_service.dart';

class ProductAdminPage extends StatelessWidget {

  FirestoreService _firestoreService = new FirestoreService(collection: ("products"));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Productos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductAddEditAdminPage()));
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: _firestoreService.getAllProducts(),
        builder: (BuildContext context, AsyncSnapshot snap){
          if (snap.hasData){
            List<Map<String, dynamic>> products = snap.data;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: ListTile(
                    title: Text(products[index]["name"]),
                    subtitle: Text(
                      products[index]["description"],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    leading: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(products[index]["image"], fit: BoxFit.cover,),
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
