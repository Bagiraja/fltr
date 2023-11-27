import 'package:flutter/material.dart';
import 'package:flutter_application_20/AddData.dart';
import 'package:flutter_application_20/CartPage.dart';
import 'package:flutter_application_20/Homepage.dart';
import 'package:flutter_application_20/addToCart.dart';
import 'package:flutter_application_20/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(), // Set SplashScreen sebagai halaman awal
      routes: {
        "cartPage": (context) => CartPage(),
        "addToCart": (context) => AddToCart(),
        "/addData": (context) => AddData(),
        "/homePage": (context) => HomePage(),
      },
    );
  }
}
