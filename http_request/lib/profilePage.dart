import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
//  const ViewProfile({Key key,}) : super(key: key);

  final data;
  ViewProfile(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
          centerTitle: true,
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(data["picture"]["thumbnail"]),
          )
        ),
      ),
    );
  }
}