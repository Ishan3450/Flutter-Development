import 'package:flutter/material.dart';

class callsSection extends StatelessWidget {
  const callsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    listItemsWithCalls() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/profile.png'),
        radius: 30.0,
        backgroundColor: Colors.grey,
      ),
      title: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text("Contact Name"),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text("(2)Yesterday : 11:04 AM"),
      ),
      trailing: Icon(Icons.call,
      color: Colors.green[900],),
    );
  }
  listItemsWithVideo() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/dp.png'),
        radius: 30.0,
        backgroundColor: Colors.grey,
      ),
      title: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text("Contact Name"),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text("(2)Yesterday : 11:04 AM"),
      ),
      trailing: Icon(Icons.video_call_outlined,
      color: Colors.green[900],),
    );
  }

  dividerFunc(){
    return Padding(
      padding: const EdgeInsets.only(left: 90.0,right: 20.0),
      child: Divider(
        color: Colors.black26,
        height: 1.0,
      ),
    );
  }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
            children: [
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithVideo(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithVideo(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithVideo(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithVideo(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithCalls(),
              dividerFunc(),
              listItemsWithVideo(),
              dividerFunc(),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: null,
          child: Icon(Icons.call,),
          backgroundColor: Colors.green[600],
        ),
    ));
  }
}