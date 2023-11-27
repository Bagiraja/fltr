import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: 8,
                      right: 60), // Memberikan margin bottom pada ikon panah
                  child: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/addData');
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 20,
                        right: 20), // Memberikan margin top pada teks "AddData"
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "AddData",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
