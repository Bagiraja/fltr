import 'package:flutter/material.dart';
import 'package:flutter_application_20/CartAppBar.dart';
import 'package:flutter_application_20/CartItemSamples.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: ListView(
   children: [
    CartAppBar(),

    Container(
      height: 700,
      padding: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(children: [
        CartItemSamples(),
      ],),
    ),
   ],
),

    );
  }
}