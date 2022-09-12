import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key key, this.index}) : super(key: key);
  final int index;

  List<Map<String,Object>> categories = [
    {
      "categoryName" : "Phones",
      "categoryImagePath" : 'images/smartPhones.jpg'
    },
    {
      "categoryName" : "Clothes",
      "categoryImagePath" : 'images/clothes.jpg'
    },
    {
      "categoryName" : "Shoes",
      "categoryImagePath" : 'images/shoes.jpg'
    },
    {
      "categoryName" : "Beauty&Health",
      "categoryImagePath" : 'images/beauty.jpg'
    },
    {
      "categoryName" : "Laptops",
      "categoryImagePath" : 'images/laptops.jpg'
    },
    {
      "categoryName" : "Furniture",
      "categoryImagePath" : 'images/furniture.jpg'
    },
    {
      "categoryName" : "Watches",
      "categoryImagePath" : 'images/watches.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(categories[index]["categoryImagePath"],width: 150.0,height: 150.0,fit: BoxFit.cover)),
            SizedBox(height:5),
            Text(categories[index]["categoryName"],style: TextStyle(fontWeight: FontWeight.w500,color: Theme.of(context).textSelectionColor,fontSize: 18),)
          ],
        ),
      ),
    );
  }
}