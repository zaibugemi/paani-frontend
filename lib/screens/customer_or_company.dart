import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.teal),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 130.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 230.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ))),
              customButton('Customer', 20.0),
              
              customButton('Company', 60.0),
            ])),

              decoration: BoxDecoration(
              color: Colors.teal 
              )
        )
    );
  }
}

Widget customButton (String text, double bottomMargin){
  return Container(
                margin: EdgeInsets.only(bottom: bottomMargin),
                width: 230,
                height: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: RaisedButton(
                    color: Colors.white,
                    textColor: Colors.grey,
                    onPressed: () => {},
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                      
                      ),),),));
}
