

import 'package:flutter/material.dart';
import 'package:restaurant/pages/admin/category_admin_page.dart';
import 'package:restaurant/pages/admin/product_admin_page.dart';

class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductAdminPage()));
              },
              title: Text("Productos"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryAdminPage()));
              },
              title: Text("Categorias"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Promociones"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ],
      )
    );
  }
}
