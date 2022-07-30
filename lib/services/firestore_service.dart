



import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  CollectionReference _firestoreReferences = FirebaseFirestore.instance.collection('categories');

  Future<List<Map<String, dynamic>>>getCategories() async{
    List<Map<String, dynamic>> categories = [];
    QuerySnapshot _collectionReference = await _firestoreReferences.get();
    _collectionReference.docs.forEach((element){
      Map<String, dynamic> categoryMap = element.data() as Map<String, dynamic>;
      categories.add(categoryMap);
    });
    return categories;
  }
}
