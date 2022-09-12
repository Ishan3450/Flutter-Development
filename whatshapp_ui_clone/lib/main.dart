import 'package:flutter/material.dart';
import 'chatsSection.dart';
import 'statusSection.dart';
import 'callsSection.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController tcontrol;
  List<int> items = new List();

  @override
  void initState() {
    tcontrol = new TabController(length: 4, vsync: this, initialIndex: 1);
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }
  
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.w400),
          );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: cusSearchBar,
          actions: [
            IconButton(icon: cusIcon, onPressed: () {
              setState(() {
                if (this.cusIcon.icon == Icons.search){
                  this.cusIcon = Icon(Icons.cancel);
                  this.cusSearchBar = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                    ),
                  );

                }
                else{
                  cusIcon = Icon(Icons.search);
                  cusSearchBar = Text("WhatshApp");
                }
              });
            }),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
          bottom: TabBar(controller: tcontrol, tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(icon: Text("CHATS")),
            Tab(icon: Text("STATUS")),
            Tab(icon: Text("CALLS"))
          ]),
        ),
        body: TabBarView(
          controller: tcontrol,
          children: [

          Tab(child: Text("Camera Section")),
          Tab(child: chatSection()),
          Tab(child: statusSection()),
          Tab(child: callsSection())
        ])
      ),
    );
  }
}
