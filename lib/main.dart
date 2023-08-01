import 'package:flutter/material.dart';
import 'package:shopping_app/pages/CartPage.dart';
import 'package:shopping_app/pages/Homepage.dart';
import 'package:shopping_app/pages/ItemPage.dart';
import 'package:shopping_app/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {"/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage()},

  );
  }
}
