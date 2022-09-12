//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:student_app/helpPage.dart';
import 'package:student_app/settingsPage.dart';
import 'package:student_app/viewNotes.dart';

class NxtScr extends StatefulWidget {
  NxtScr({Key key}) : super(key: key);

  @override
  _NxtScrState createState() => _NxtScrState();
}

class _NxtScrState extends State<NxtScr> {
  String dropdownValue1 = "First";
  String dropdownValue2 = "BA";
  String dropdownValue3 = "Physics";
  String feedBack;
  String afterSubmit = "";

  void viewNotes() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewNotes()),
    );
  }

  void helpPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HelpPage()));
  }

  void settingsPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SettingsPage()));
  }

  void afterSubmitButtonPress() {
    setState(() {
      afterSubmit = "Your Feedback Successfully Submited";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DefaultTabController(
          initialIndex: 0,
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Welcome'),
              actions: [
                Title(
                    color: Colors.lightBlueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(Icons.ios_share),
                    ))
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Internals",
                  ),
                  Tab(
                    text: "Attendence",
                  ),
                  Tab(
                    text: "Notes",
                  ),
                  Tab(
                    text: "Time Table",
                  ),
                  Tab(
                    text: "FeedBack",
                  )
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Text(
                      'Student Information:\n\nStudent Name : Anjan Kumar\nReg. No : 192659374958\nBranch : IT\nSemester : 4th',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.0),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help'),
                    onTap: () {
                      helpPage();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      settingsPage();
                    },
                  )
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Name : Anjan Kumar'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 44.0,
                        backgroundColor: Colors.lightBlueAccent,
                        child: CircleAvatar(
                          radius: 42.0,
                          foregroundImage: AssetImage('images/schlr.png'),
                          backgroundColor: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Internals'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Table(
                        border:
                            TableBorder.all(width: 1.0, color: Colors.white),
                        children: [
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blue.shade700),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text('SI. NO',
                                      textScaleFactor: 1.3,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black87)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text('Subject',
                                      textScaleFactor: 1.3,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black87)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text('Internal',
                                      textScaleFactor: 1.3,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black87)),
                                )
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.lightBlueAccent),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '1',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Physics',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '45',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                )
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueAccent),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '2',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Maths',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '36',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                )
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.lightBlueAccent),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '3',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'CS',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '48',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                )
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueAccent),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '4',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Kan',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '38',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                )
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.lightBlueAccent),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '5',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'English',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '50',
                                    textScaleFactor: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                )
                              ])
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 44.0,
                      backgroundColor: Colors.lightBlueAccent,
                      child: CircleAvatar(
                        radius: 42.0,
                        foregroundImage: AssetImage('images/attendence.png'),
                        backgroundColor: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Attendence',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Table(
                      border: TableBorder.all(width: 1.0, color: Colors.white),
                      children: [
                        TableRow(
                            decoration: BoxDecoration(color: Colors.blueAccent),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'SI. No',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Subj. Name',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Total Days',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Present Days',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '1',
                                  textScaleFactor: 1.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Physics',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '50',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '45',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.blueAccent),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Maths',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '50',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '46',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                        TableRow(
                            decoration:
                                BoxDecoration(color: Colors.lightBlueAccent),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '3',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'CS',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '50',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '48',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.blueAccent),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '4',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Kan',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '50',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '50',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                        TableRow(
                            decoration:
                                BoxDecoration(color: Colors.lightBlueAccent),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '5',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'English',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '50',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '49',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 44.0,
                      backgroundColor: Colors.lightBlueAccent,
                      child: CircleAvatar(
                        radius: 42.0,
                        foregroundImage: AssetImage('images/notes.png'),
                        backgroundColor: Colors.white70,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Notes')),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, bottom: 2.0),
                        child: Text(
                          'Select Your Semester',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, right: 12.0, bottom: 8.0),
                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        width: 1.0, color: Colors.black54))),
                            value: dropdownValue1,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue1 = newValue;
                              });
                            },
                            items: <String>[
                              'First',
                              'Second',
                              'Third',
                              'Fourth',
                              'Fifth',
                              'Sixth'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, bottom: 2.0),
                        child: Text(
                          'Select Your Course',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, right: 12.0, bottom: 8.0),
                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        width: 1.0, color: Colors.black54))),
                            value: dropdownValue2,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue2 = newValue;
                              });
                            },
                            items: <String>[
                              'BA',
                              'BE',
                              'Diploma',
                              'ME',
                              'MCA',
                              'MR'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, bottom: 2.0),
                        child: Text(
                          'Enter Your Subject',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 8.0, right: 12.0, bottom: 8.0),
                        child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        width: 1.0, color: Colors.black54))),
                            value: dropdownValue3,
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue3 = newValue;
                              });
                            },
                            items: <String>[
                              'Physics',
                              'Maths',
                              'CS',
                              'Kan',
                              'English'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                  value: value, child: Text(value));
                            }).toList()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, top: 4.0, bottom: 4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              viewNotes();
                            },
                            child: Text('View Notes')),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 47.0,
                      backgroundColor: Colors.lightBlueAccent,
                      child: CircleAvatar(
                        radius: 45.0,
                        foregroundImage: AssetImage('images/tt.png'),
                        backgroundColor: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Time Table')),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Table(
                      border: TableBorder.all(width: 1.0, color: Colors.white),
                      children: [
                        TableRow(
                            decoration:
                                BoxDecoration(color: Colors.lightBlue.shade800),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Mon',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Tue',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Wed',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Thur',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Fri',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Sat',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade300,
                            ),
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mat',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kan',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Eng',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade600,
                            ),
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('IC',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mat',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mat',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade300,
                            ),
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mat',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kan',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Eng',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade600,
                            ),
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Eng',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kan',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade300,
                            ),
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mat',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mat',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Eng',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade600,
                            ),
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kan',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('IC',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Eng',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kan',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CS',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Phy',
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                            ]),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 44.0,
                      backgroundColor: Colors.lightBlueAccent,
                      child: CircleAvatar(
                        radius: 42.0,
                        foregroundImage: AssetImage('images/feed.png'),
                        backgroundColor: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('FeedBack Form'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      onChanged: (value) {
                        feedBack = value;
                      },
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Feed Back Here',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.lightBlueAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3.0,
                                  color: Colors.lightBlueAccent.shade400),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                        onPressed: () {
                          afterSubmitButtonPress();
                        },
                        child: Text('Submit')),
                  ),
                  Center(
                      child: Text(
                    afterSubmit,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
