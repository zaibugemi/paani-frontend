import 'package:flutter/material.dart';
import 'package:paani/screens/index.dart';

class CustomerHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paani. Home'),
      ),
      body: Column(children: <Widget>[
        Text('Congrats you\'ve reached home!'),
        RaisedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => IndexScreen()), (_) => false);
          },
          child: Text('Logout'),
        )
      ],),
    );
  }
}