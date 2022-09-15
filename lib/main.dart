import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/pages/admin/home_admin_page.dart';
import 'package:restaurant/pages/admin/login_admin_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // checkLogin() async{
  //   final user = await FirebaseAuth.instance.currentUser;
  //   print(await user!.getIdToken());
  // }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //checkLogin();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        fontFamily: 'Source Sans Pro Regular'
      ),
      home: CheckUserLogin(),
    );
  }
}

class CheckUserLogin extends StatelessWidget{

  Future check() async{
    final user = await FirebaseAuth.instance.currentUser;
    return user!.uid;
  }

  Future<bool> checkIsLogin() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    bool res = _prefs.getBool("isLogin") ?? false;
    return res;
  }

  @override
    Widget build(BuildContext context){
      return FutureBuilder(
          future: checkIsLogin(),
          builder: (BuildContext context, AsyncSnapshot snap){
            if(snap.hasData){
              if(snap.data){
                return HomeAdminPage();
              }else{
                return LoginAdminPage();
              }
    }
            return LoginAdminPage();
    },
    );
  }
}
