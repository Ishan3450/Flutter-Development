import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  SecondPage(this.name);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Text(
              'Coach Profile',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 7.0,
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Hero(
                            tag: 'demo',
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundImage: AssetImage(
                                  'images/luciferImage.jpg',
                                ),
                                radius: 40.0,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  name,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Available',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 4.0),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Expert',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'CS',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.green),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Plans',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Previous Plans',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  _buildCard("Basic Plan", "3.99"),
                  _buildCard("Pro Plan", "6.99"),
                  _buildCard("Advance Plan", "8.99"),
                  _buildCard("Advance Pro Plan", "11.99")
                ],
              ),
            ],
          )),
    );
  }

  Widget _buildCard(String planName, String planPrice) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 7.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              planName,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                  fontSize: 18.0),
            ),
            Column(
              children: [
                Text(
                  'Price',
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                Text(
                  "$planPrice",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              height: 40.0,
              width: 115.0,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[100].withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Buy',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
