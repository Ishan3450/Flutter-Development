import 'package:flutter/material.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({Key key}) : super(key: key);

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  @override
  Widget build(BuildContext context) {
    
    Icon star = Icon(Icons.star_border);

    return Container(
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('images/macbook_image.png'),
                ),
                Text('Title'),
                SizedBox(height: 10.0),
                Text('Description of the Product')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(icon: star, onPressed: (){
                  setState((){
                    star = Icon(Icons.star,color: Colors.redAccent);
                  });
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}