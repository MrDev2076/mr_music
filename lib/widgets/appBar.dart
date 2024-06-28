import 'package:flutter/material.dart';

class CoustomAppBar extends StatelessWidget {

  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final VoidCallback onNotificationTap;
  final VoidCallback onLoginTap;

  const CoustomAppBar({
    required this.title,
    required this.scaffoldKey,
    required this.onNotificationTap,
    required this.onLoginTap,
});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title, textAlign: TextAlign.center,
      ),

      backgroundColor: Colors.white60,
      leading: IconButton(
        icon: Icon(Icons.menu_rounded,
        color: Colors.white,
        ),
        onPressed: (){
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      actions: <Widget> [
        IconButton(onPressed: onNotificationTap, icon: Icon(Icons.message_rounded, color: Colors.red,)),
        TextButton(onPressed: onLoginTap,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blueAccent
            ),
            child: Text('Login',
              style: TextStyle(
                color: Colors.white
              ),
        ))
      ]

    );
  }
}

@override
Size get preferredSize => Size.fromHeight(kToolbarHeight);
