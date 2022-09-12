//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_ui/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: firstPage());
  }
}

class firstPage extends StatelessWidget {
  const firstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new FlutterLogo(
            size: 25.0,
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.grey,
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment(0.0, -0.40),
                  height: 100.0,
                  color: Colors.white,
                  child: Text(
                    'Get Coaching',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 2.0, color: Colors.grey)
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 25.0),
                            child: Text(
                              'YOU HAVE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.grey),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 5.0),
                            child: Text(
                              '206',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 100.0),
                      Container(
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text(
                            'Buy More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MY COACHES',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  Text(
                    'MY PAST SESSIONS',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondPage('Lucifer')));
                    },
                    child: _buildCard('Lucifer', 'Available', 1)),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        title: Text('Not Available',style: TextStyle(color: Colors.green),),
                        content: Text('Coach Cloie is Not Available Now',style: TextStyle(fontWeight: FontWeight.w500)),
                        actions: [
                          TextButton(onPressed: (){Navigator.pop(context);}, child: Text('OK',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),))
                        ],
                      );
                    });
                  },
                  child: _buildCard('Cloie', 'Away', 2)),
                _buildCard('Den', 'Away', 3),
                _buildCard('MazeKing', 'Available', 4),
                _buildCard('Linda', 'Away', 5),
                _buildCard('Magen ', 'Available', 6),
                _buildCard('Decker', 'Availbale', 7),
                _buildCard('Heaven', 'Away', 8)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 7.0,
        child: Column(
          children: [
            SizedBox(height: 12.0),
            Hero(
              tag: 'demo',
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('images/luciferImage.jpg'))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0)),
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey),
            ),
            SizedBox(height: 5.0),
            Text(status,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.grey)),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
              width: 250.0,
              decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ))
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0));
  }
}
