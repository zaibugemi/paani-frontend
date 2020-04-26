import 'package:flutter/material.dart';
import 'package:paani/screens/signup_customer.dart';
import 'package:paani/screens/signup_company.dart';

class SignupAsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paani.'),
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          child: Text('Customer'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>
                CustomerSignupScreen()
              )
            );
          },
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>
                CompanySignupScreen()
              )
            );
          },
          child: Text('Company')
        ),
      ],),
    );
  }
}