import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://img.freepik.com/premium-vector/man-profile-cartoon_18591-58482.jpg?w=1480';

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView
        (
          padding: EdgeInsets.zero,
          children: const 
          [
          DrawerHeader
          (
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader
              (
                decoration: BoxDecoration
                (
                  color: Colors.blue,
                ),
                margin: EdgeInsets.zero,
                accountEmail: Text("Email"),
                accountName: Text("Username"),
                currentAccountPicture: CircleAvatar
                (
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )
              ),
            ListTile
            (
              leading: Icon
              (
                CupertinoIcons.home,
                color:Colors.white
                ),
              title: Text 
            (
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle
              (
               color: Colors.white, 
              ),
              
            )
            ),
             ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
               ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ]),
      ),
    );
  }
}
