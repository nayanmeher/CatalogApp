

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String imgUrl =
      "data:image/jpeg;base64,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";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
              currentAccountPicture: Image.asset('assets/images/user.png', color: Colors.white,),
              accountEmail: Text('nayan@gmail.com'),
              accountName: Text('Nayan Meher'),
            )),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text('Home', textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings,color: Colors.white),
              title: Text('Settings', textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text('Contact Us', textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
