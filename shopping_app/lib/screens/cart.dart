import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/const/myAppIcons.dart';
import 'package:shopping_app/provider/dark_theme_privider.dart';
import 'package:shopping_app/screens/empty_cart.dart';
import 'package:shopping_app/screens/full_cart.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List product = [1];
    final themeChange = Provider.of<DarkThemeProvider>(context);

    //if the list will be empty it will return emptycartscreen and if not it will retrun fullcartscreen.
    return Scaffold(
        body: product.isEmpty
            ? EmpptyCartScreen()
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    'Cart(1)',
                    style: TextStyle(
                      color:
                          themeChange.darkTheme ? Colors.white : Colors.black,
                    ),
                  ),
                  actions: [
                    IconButton(icon: Icon(MyAppIcons.delete), onPressed: () {})
                  ],
                  backgroundColor:
                      themeChange.darkTheme ? Colors.black : Colors.white,
                  elevation: 7.0,
                ),
                body: ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _returnProductCard(context, themeChange);
                    }),
                bottomNavigationBar: BottomAppBar(
                  color: themeChange.darkTheme ? Colors.black54 : Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF9C27B0),
                                    Color(0xFFE91E63)
                                  ], stops: [
                                    0.0,
                                    0.7
                                  ])),
                              // ignore: deprecated_member_use
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                        left: 45.0,
                                        right: 45.0),
                                    // ignore: deprecated_member_use
                                    child: Text(
                                      'Checkout',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .textSelectionColor,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Total : ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            Text(
                              'US \$450.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.blueAccent),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
  }

  //widget to display whole product with image and details
  Widget _returnProductCard(
      BuildContext context, DarkThemeProvider themeChange) {
    return Card(
      color: themeChange.darkTheme ? Colors.black54 : Colors.white70,
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 6.0),
      elevation: 7.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('images/macbook_image.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 0.0, bottom: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Wrap(children: [
                          Text('MacBook Pro',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18.0)),
                        ]),
                      ),
                      IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {},
                          color: Colors.red),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text('Price : '),
                      SizedBox(width: 5.0),
                      Text(
                        '450.0',
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text('Sub Total : '),
                      SizedBox(width: 5.0),
                      Text(
                        '\$450.0',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: themeChange.darkTheme
                                ? Colors.brown.shade400
                                : Colors.purple),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.remove, color: Colors.redAccent),
                          onPressed: () {}),
                      Card(
                        elevation: 12.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: 30.0,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xFF9C27B0),
                            Color(0xFFE91E63)
                          ], stops: [
                            0.0,
                            0.7
                          ])),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.add, color: Colors.green),
                          onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
