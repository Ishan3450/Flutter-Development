import 'package:backdrop/backdrop.dart';
import 'package:badges/badges.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopping_app/widgets/category.dart';
import 'package:shopping_app/widgets/popular_products.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List _brandImages = [
  'images/adidas.png',
  'images/apple.png',
  'images/dell.png',
  'images/huawei.png',
  'images/nike.png',
  'images/samsung.png',
  'images/hm.png'
];

List _popularProduct = [1,2,3,4,5,6

];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      frontLayerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: BackdropAppBar(
        title: Text("Home"),
        leading: BackdropToggleButton(icon: AnimatedIcons.home_menu),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple[600], Colors.purple[200]],
                  stops: [0.0, 1.0])),
        ),
        actions: <Widget>[
          TextButton(onPressed: () {}, child: Text('WishList')),
          SizedBox(
            width: 6.0,
          ),
          CircleAvatar(
            radius: 15.0,
            child: ClipRRect(
                child: Image.asset('images/user_image.png'),
                borderRadius: BorderRadius.circular(15.0)),
          ),
          SizedBox(
            width: 6.0,
          ),
        ],
      ),
      backLayer: Center(
        child: Text("Back Layer"),
      ),
      frontLayer: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 190.0,
              child: SizedBox(
                  height: 200.0,
                  width: 350.0,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(seconds: 1),
                    images: [
                      AssetImage('images/carousel1.jpg'),
                      AssetImage('images/carousel2.jpg'),
                      AssetImage('images/carousel3.jpg'),
                      AssetImage('images/carousel4.jpg')
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.lightGreenAccent,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.purple.withOpacity(0.5),
                    borderRadius: true,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Categories',
                style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: double.infinity,
              height: 190.0,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                return CategoryWidget(index: index,);
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Popular Brands',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text('View all >>',
                      style: TextStyle(fontSize: 15.0, color: Colors.red))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 210.0,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Swiper(
                itemCount: _brandImages.length,
                autoplay: true,
                onTap: (index) {},
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.grey[300],
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.asset(
                        _brandImages[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:                   Text(
                    'Popular Brands',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
              ),
            Container(
              height: 250.0,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _popularProduct.length,
                itemBuilder: (BuildContext context,int index){
                  return PopularProducts();
              }),
            )
          ],
        ),
      ),
    );
  }
}
