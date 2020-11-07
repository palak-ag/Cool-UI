
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Screen3 extends StatefulWidget {
  @override
  State createState() {
    return Screen3State();
  }
}

class Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children : <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               new TextFormField(
                decoration : new InputDecoration(
                labelText: "Advice",
                )
              ),
              new MaterialButton(
                height: 40,
                minWidth: 100,
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text("Submit"),
                onPressed : ()=>{},
                splashColor: Colors.black,
              ),

            ],

          )
        ]
       
      )
    );

     

     
    
  }
}

