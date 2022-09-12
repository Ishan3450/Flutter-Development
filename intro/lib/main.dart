//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/pp.jpg')
              ),
              
              Text( 
                "Jagani Ishan",
                style: TextStyle(
                  fontFamily: 'Lobster-Regular',
                  fontSize: 60.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5
                ),
                ),
              
              Text(
                "Flutter Student",
                style: TextStyle(
                  fontFamily: 'AkayaTelivigala-Regular',
                  fontWeight: FontWeight.w100,
                  fontSize: 40.0,
                  letterSpacing: 0.5
                ),
              ),
              
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "+91 8401275275",
                    style: TextStyle(
                      fontFamily: 'AkayaTelivigala-Regular',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 2.0
                    )
                  ),
                ),
              ),
              
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.lightBlueAccent
                  ),
                  title: Text(
                     "jaganiishan@gmail.com",
                     style: TextStyle(
                       fontFamily: 'AkayaTelivigala-Regular',
                       fontSize: 18.0,
                       fontWeight: FontWeight.w100,
                       letterSpacing: 2.0
                     ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}