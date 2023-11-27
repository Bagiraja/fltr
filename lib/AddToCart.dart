import 'package:flutter/material.dart';
import 'package:flutter_application_20/AddToBar.dart';

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  AddToBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
