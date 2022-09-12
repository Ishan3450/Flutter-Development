import 'package:flutter/material.dart';

class OpenForgotPage extends StatefulWidget {
  OpenForgotPage({Key key}) : super(key: key);

  @override
  _OpenForgotPageState createState() => _OpenForgotPageState();
}

class _OpenForgotPageState extends State<OpenForgotPage> {
  String phoneNumber;
  String password;
  String temp = "";

  void changePass() {
    setState(() {
      temp = "Password Changed Successfully !!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Change Password'),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)))),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    changePass();
                  },
                  child: Text('Change')),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                temp,
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
