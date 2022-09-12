import 'package:flutter/material.dart';
import 'package:student_app/afterLoginButtonScreen.dart';
import 'package:student_app/forgotPage.dart';

class Homelayout extends StatefulWidget {
  Homelayout({Key key}) : super(key: key);

  @override
  _HomelayoutState createState() => _HomelayoutState();
}

class _HomelayoutState extends State<Homelayout> {

  void onLoginButtonPress() {
    if (phoneNumber == '123' && password == 'admin') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NxtScr()),
      );
    }
  }

  void openForgotPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => OpenForgotPage()));
  }
  
  String phoneNumber;
  String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text(
            'Login Page',
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 42.0,
                backgroundColor: Colors.lightBlueAccent,
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/scling.PNG'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  decoration: InputDecoration(
                      hintMaxLines: 10,
                      hintText: 'Enter Your Mobile Number',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 1.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: GestureDetector(
                  onTap: openForgotPage,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 10.0,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  onLoginButtonPress();
                },
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
