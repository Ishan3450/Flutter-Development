import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:shopping_app/const/myAppIcons.dart';
import 'package:shopping_app/screens/cart.dart';
import 'package:shopping_app/screens/feed.dart';
import 'package:shopping_app/screens/home.dart';
import 'package:shopping_app/screens/search.dart';
import 'package:shopping_app/screens/user_info.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _SelectedIndex = 0;

  static const List _screenOption = [Home(), Feed(), Search(), Cart(), UserInfo()];

  void _onItemTap(int curIndex) {
    setState(() {
      _SelectedIndex = curIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _screenOption.elementAt(_SelectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(MyAppIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(MyAppIcons.rss), label: "feed"),
          BottomNavigationBarItem(icon: Icon(null),label: "Search"),
          BottomNavigationBarItem(icon: Icon(MyAppIcons.bag), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(MyAppIcons.user), label: "User")
        ],
        currentIndex: _SelectedIndex,
        onTap: _onItemTap,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _SelectedIndex = 2;
        });
      },child: Icon(MyAppIcons.search),),
    );
  }
}
