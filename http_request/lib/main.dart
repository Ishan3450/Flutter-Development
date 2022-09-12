import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http_request/profilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact List'),
          centerTitle: true,
        ),
        body: makingHttpRequest(),
      ),
    );
  }
}

class makingHttpRequest extends StatefulWidget {
  const makingHttpRequest({Key key}) : super(key: key);

  @override
  _makingHttpRequestState createState() => _makingHttpRequestState();
}

class _makingHttpRequestState extends State<makingHttpRequest> {
  final String url = 'https://randomuser.me/api/?results=15';

  List data;

  Future<String> makeHttpRequest() async {
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractedData = jsonDecode(response.body);
      data = extractedData["results"];
    });
  }

  @override
  void initState() {
    this.makeHttpRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i){
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ViewProfile(data[i])));
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data[i]["picture"]["thumbnail"]), 
            ),
            title: Text(data[i]["name"]["first"]),
            subtitle: Text(data[i]["phone"]),
          );
        }),
      ),
    );
  }
}
