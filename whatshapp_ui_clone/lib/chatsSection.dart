
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chatOnTap.dart';

class chatSection extends StatelessWidget {
  const chatSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
        child: Text("Hi, From Whatshapp"),
      ),
      trailing: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text("3:44 PM"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: CircleAvatar(
              child: Text("2",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w300)),
              radius: 10.0,
              backgroundColor: Colors.green[600],
            ),
          )
        ],
      ),
    );
  }
  listItemsWithMute() {
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
        child: Text("Hi, From Whatshapp"),
      ),
      trailing: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text("3:44 PM"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Icon(Icons.volume_off)
          )
        ],
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
    
    return Container(
      child: Scaffold(
          body: ListView(
            children: [
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
              listItemsWithMute(),
              dividerFunc(),
              listItems(),
              dividerFunc(),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => anotherPage()));},
          child: Icon(Icons.chat),
          backgroundColor: Colors.green[600],
          )
    ));
  }
}