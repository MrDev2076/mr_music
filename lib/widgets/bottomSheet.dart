import 'package:flutter/material.dart';

class LoginBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Login'),
          SizedBox(height: 30,),
          Text('Phone Number : '),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
