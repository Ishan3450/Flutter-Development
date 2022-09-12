import 'package:flutter/material.dart';
import 'dart:math';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  AnimationController _controller;
  var animation;

  @override
  void initState() {
    super.initState();
    animate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  animate() {
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut);
    _controller.addListener(() {
      setState(() {});
      print(_controller.value);
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) + 1;
        });

        print('Completed');
        _controller.reverse();
      }
    });
  }

  void roll() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: roll,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Image(
                        height: 200 - (animation.value) * 200,
                        image:
                            AssetImage('images/dice-png-$leftDiceNumber.png')),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: roll,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Image(
                        height: 200 - (animation.value) * 200,
                        image:
                            AssetImage('images/dice-png-$rightDiceNumber.png')),
                  ),
                ))
              ],
            ),
            RaisedButton(
              onPressed: roll,
              child: Text(
                'Roll',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
