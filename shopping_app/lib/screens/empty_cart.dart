import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/dark_theme_privider.dart';

class EmpptyCartScreen extends StatelessWidget {
  const EmpptyCartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      children: [
        SizedBox(height:20.0),
        Image(image: AssetImage('images/cart_image.png')),
        Text(
          'Your Cart is Empty',
          style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w600,
              // ignore: deprecated_member_use
              color: Theme.of(context).textSelectionColor),
        ),
        SizedBox(height: 25.0),
        Text(
          'Looks Like You didn\'t add \n anything in your cart yet',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              // ignore: deprecated_member_use
              color: themeChange.darkTheme
                  ? Theme.of(context).disabledColor
                  : Color(0x8A000000)),
        ),
        SizedBox(height: 50.0),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            // ignore: deprecated_member_use
            child: Text('Shop Now',style: TextStyle(fontSize: 30.0,color: Theme.of(context).textSelectionColor),textAlign: TextAlign.center,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
              side: BorderSide(color: Colors.red),
            ),
            color: Colors.redAccent,
            
          ),
        )
      ],
    );
  }
}
