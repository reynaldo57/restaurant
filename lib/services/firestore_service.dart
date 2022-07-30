



import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  CollectionReference _firestoreReferences = FirebaseFirestore.instance.collection('categories');

  getCategories()async{
    QuerySnapshot _collectionReference = await _firestoreReferences.get();
    print(_collectionReference.docs.length);
  }
}
