import 'package:flutter/material.dart';

 class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              accountName: Text(
                "PeningKaliBah", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                  ),
                  ),
               accountEmail: Text(
                "capekalibah123@gmail.com",
                 style: TextStyle(
                  fontSize: 15, 
                  fontWeight: FontWeight.bold
                  ),
               ),
               currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/gt.jpeg"),
               ),
            ),
           ),
           ListTile(
             leading: Icon(
              Icons.home,
              color: Colors.grey,
             ),
           ),
      ],
      ),
    );
  }
 }