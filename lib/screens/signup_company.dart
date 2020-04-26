import 'package:flutter/material.dart';

class CompanySignupScreen extends StatefulWidget {
  @override
  _CompanySignupScreenState createState() => _CompanySignupScreenState();
}

class _CompanySignupScreenState extends State<CompanySignupScreen> {
  BuildContext _context;

  final formKey = GlobalKey<FormState>();

  String _email, _password; 

  void _submit() {
     final form = formKey.currentState;
    
     if(form.validate()) {
       form.save();
     }
  }

  Widget build(BuildContext context) {
    _context = context;
    
    Widget loginButton = RaisedButton(
      onPressed: _submit,
      child: Text('Submit'),
    );

    Widget loginForm = new Form(
      key: formKey,
      child: Column(children: <Widget>[
        TextFormField(
          validator: (text) => text.length > 0 ? null : 'Enter something',
          onSaved: (text) => _email = text,
        ),
        TextFormField(
          validator: (text) => null,
          onSaved: (text) => _password = text,
        ),
      ],)
    );

    print(context);
    return Scaffold (
      appBar: AppBar(
        title: Text('Paani - Company Signup'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          loginForm,
          loginButton,
        ],),
      ),

    );
  }
}