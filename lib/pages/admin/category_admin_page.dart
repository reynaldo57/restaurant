

import 'package:flutter/material.dart';
import 'package:restaurant/services/firestore_service.dart';

class CategoryAdminPage extends StatelessWidget {

  FirestoreService _firestoreService = new FirestoreService(collection: 'categories');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorias"),
      ),
      body: Center(),
    );
  }
}
