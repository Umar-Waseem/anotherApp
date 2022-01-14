import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountEmail: Text('someone'),
                accountName: Text('someone@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.zoom_out_map_rounded, color: Colors.white),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.backpack, color: Colors.white),
              title: Text('Hello', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
