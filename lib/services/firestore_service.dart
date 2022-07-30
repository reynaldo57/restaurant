



import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  CollectionReference _firestoreReferences = FirebaseFirestore.instance.collection('categories');

  getCategories()async{
    QuerySnapshot _collectionReference = await _firestoreReferences.get();
    _collectionReference.docs.forEach((element){
      Map<String, dynamic> categoryMap = element.data() as Map<String, dynamic>;
      print(categoryMap);
    });
  }
}
