import 'package:flutter/material.dart';

class anotherPage extends StatelessWidget {
  const anotherPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    contactOverview() {
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
          child: Text("Status of That Person"),
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


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
          title: ListTile(title: Text('Select Contacts'),subtitle: Text('Number of Contacts'),),
        backgroundColor: Colors.green[900],
        ),
        body: Center(
          child: ListView(
            children: [
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
              contactOverview(),
              dividerFunc(),
            ],
          )
        ),
      ),
    );
  }
}
