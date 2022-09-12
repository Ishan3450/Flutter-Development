import 'package:flutter/material.dart';

class statusSection extends StatelessWidget {
  const statusSection({Key key}) : super(key: key);

  listItems() {
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
        child: Text("Today : 2:44 PM"),
      ),
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/dp.png'),
                radius: 30.0,
                backgroundColor: Colors.grey,
              ),
              title: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("My Status"),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("Tap to Add Status Update"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 8.0, top: 8.0, bottom: 8.0),
              child: Text(
                "Recente updates",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
            listItems(),
            dividerFunc(),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.green[600],
        ),
      ),
    );
  }
}
