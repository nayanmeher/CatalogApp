

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

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
