import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_20/AppBarWidget.dart';
import 'package:flutter_application_20/CartPage.dart';
import 'package:flutter_application_20/CategoriesWidget.dart';
import 'package:flutter_application_20/DrawerWidget.dart';
import 'package:flutter_application_20/ItemsWidget.dart';
import 'package:flutter_application_20/addToCart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 13),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          CategoriesWidget(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "All Food",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ItemsWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          if (index == 1) {
            print("Shopping Cart di-tap");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          } else if (index == 2) {
            print("Add to Cart di-tap");
            // Gantilah dengan navigasi atau fungsi lainnya yang sesuai
            // Contoh:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddToCart()),
            );
          }
        },
        backgroundColor: Colors.white,
        color: Colors.grey,
        index: 1, // Indeks tengah
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart_checkout,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add_chart,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
