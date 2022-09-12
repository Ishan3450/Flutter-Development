import 'package:flutter/material.dart';

class ViewNotes extends StatelessWidget {
  const ViewNotes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes Section'),
      ),
      body: Center(
        child: Text('No Notes Available !!',
        style: TextStyle(
          color: Colors.black38,
          fontSize: 20.0
        ),),
      ),
    );
  }
}