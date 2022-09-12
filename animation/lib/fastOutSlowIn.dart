import 'package:flutter/material.dart';

class MyMainPage extends StatefulWidget {
  MyMainPage({Key key}) : super(key: key);

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage>
    with SingleTickerProviderStateMixin {
  Animation animation, delayAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.7, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
              body: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform(
                      transform: Matrix4.translationValues(
                          animation.value * width, 0.0, 0.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          delayAnimation.value * width, 0.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(hintText: "Username"),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Transform(
                      transform: Matrix4.translationValues(
                          delayAnimation.value * width, 0.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0.0, 0.0),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Login'))),
                    SizedBox(
                      height: 10.0,
                    ),
                    Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0.0, 0.0),
                        child: Text("Don't Have an Account")),
                    SizedBox(height: 5.0),
                    SizedBox(height: 10.0),
                    Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0.0, 0.0),
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text('Signup'),
                        ))
                  ],
                ),
              ),
            ),
          ));
        });
  }
}
