import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/dark_theme_privider.dart';
import 'package:badges/badges.dart';

class Feed extends StatelessWidget {
  const Feed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
        body: new StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) =>
          _returnProductCard(context, themeChange),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(3, index.isEven ? 4 : 5),
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 6.0,
    ));
  }

  Widget _returnProductCard(
      BuildContext context, DarkThemeProvider themeChange) {
    return Card(
      shadowColor: Colors.grey,
      color: themeChange.darkTheme ? Colors.black : Colors.white70,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('images/macbook_image.png'),
                ),
                Badge(
                  toAnimate: true,
                  shape: BadgeShape.square,
                  badgeColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                  badgeContent:
                      Text('New', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MacBook Pro',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 18.0),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    '\$1399.0',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity : 9 left',
                        style: TextStyle(color: Colors.grey),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {},
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
