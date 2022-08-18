import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restaurant/services/firestore_service.dart';

class ProductAddEditAdminPage extends StatefulWidget {
  @override
  State<ProductAddEditAdminPage> createState() =>
      _ProductAddEditAdminPageState();
}

class _ProductAddEditAdminPageState extends State<ProductAddEditAdminPage> {
  final _formKey = GlobalKey<FormState>();
  FirestoreService _categoryFirestoreService =
      new FirestoreService(collection: "categories");

  firebase_storage.FirebaseStorage _storage = firebase_storage.FirebaseStorage.instance;

  TextEditingController _ingredientController = new TextEditingController();
  List<Map<String, dynamic>> categories = [];
  List<String> ingredients = [];
  String selectCategory = "";
  ImagePicker _picker = new ImagePicker();
  XFile? image;

  @override
  void initState() {
    super.initState();
    getDataCategory();
  }

  getDataCategory() {
    _categoryFirestoreService.getCategories().then((value) {
      categories = value;
      selectCategory = categories[0]["id"];
      setState(() {});
    });
  }

  getImageGallery() async {
    XFile? selectImageGallery =
        await _picker.pickImage(source: ImageSource.gallery);
    image = selectImageGallery;
    setState(() {});
  }

  getImageCamera() async {
    XFile? selectImageCamera =
    await _picker.pickImage(source: ImageSource.camera);
    image = selectImageCamera;
    setState(() {});
  }

  uploadImageFirebase() async{
    firebase_storage.Reference reference = _storage.ref().child('Products');
    firebase_storage.TaskSnapshot upload = await reference.child("mandarina.jpg").putFile(File(image!.path),);
    print(upload);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Productos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //if (_formKey.currentState!.validate()) {}
          uploadImageFirebase();
        },
        child: Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Producto", hintText: "Nombre del Producto"),
                  validator: (String? value) {
                    if (value!.isEmpty || value == null) {
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Descripcion",
                      hintText: "Descripcion del Producto"),
                  validator: (String? value) {
                    if (value!.isEmpty || value == null) {
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField<String>(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        labelText: "Categoria",
                        hintText: "--Selecciona una Categoria"),
                    value: selectCategory,
                    onChanged: (String? value) {},
                    items: categories
                        .map((e) => DropdownMenuItem<String>(
                              child: Text(e["description"]),
                              value: e["id"],
                            ))
                        .toList()),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Precio", hintText: "Precio del Producto"),
                  validator: (String? value) {
                    if (value!.isEmpty || value == null) {
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Tiempo", hintText: "Tiempo del Producto"),
                  validator: (String? value) {
                    if (value!.isEmpty || value == null) {
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Puntaje", hintText: "Puntaje del Producto"),
                  validator: (String? value) {
                    if (value!.isEmpty || value == null) {
                      return "Completar el campo";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _ingredientController,
                        decoration: InputDecoration(
                            labelText: "Ingrediente",
                            hintText: "Ingrediente del Producto"),
                        validator: (String? value) {
                          if (value!.isEmpty || value == null) {
                            return "Completar el campo";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    MaterialButton(
                      onPressed: () {
                        ingredients.add(_ingredientController.text);
                        _ingredientController.clear();
                        setState(() {});
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                    height: 260,
                    child: ingredients.length > 0
                        ? ListView.builder(
                            primary: true,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: ingredients.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text(ingredients[index]),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    ingredients.removeAt(index);
                                    setState(() {});
                                  },
                                ),
                              );
                            },
                          )
                        : Center(
                            child: Text("Aun n ohay ingredientes"),
                          )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Imagen Producto"),
                    ElevatedButton.icon(
                      onPressed: () {
                        getImageGallery();
                      },
                      icon: Icon(Icons.photo),
                      label: Text(
                        "Galeria",
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        getImageCamera();
                      },
                      icon: Icon(Icons.camera_alt),
                      label: Text(
                        "Camara",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                image != null
                    ? Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.file(
                          File(image!.path),
                          fit: BoxFit.cover,
                        ),
                      )
                    : Text("No hay Imagen"),
                SizedBox(
                  height: 70.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
