import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('N Sudharshan'),
              accountEmail: Text('user@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  ''
                ),
              ),
          ),
          ListTile(
            leading: Icon(Icons.person_3_rounded,
            color: Colors.redAccent,),
            title: Text('MyAccount'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.info_rounded,
            color: Colors.blueAccent,),
            title: Text('About'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.settings_accessibility_rounded,
            color: Colors.grey,),
            title: Text('settings'),
          ),

        ],
      ),
    );
  }
}
