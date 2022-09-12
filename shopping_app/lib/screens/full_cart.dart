// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shopping_app/const/myAppIcons.dart';
// import 'package:shopping_app/provider/dark_theme_privider.dart';

// class FullCartScreen extends StatefulWidget {
//   final int lengthOfProductsList;
//   FullCartScreen(this.lengthOfProductsList);
//   @override
//   FullCartScreenState createState() => FullCartScreenState();
// }

// class FullCartScreenState extends State<FullCartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final themeChange = Provider.of<DarkThemeProvider>(context);
//         return Scaffold(
//                     appBar: AppBar(
//                       title: Text(
//                         'Cart(1)',
//                         style: TextStyle(
//                           color:
//                               themeChange.darkTheme ? Colors.white : Colors.black,
//                         ),
//                       ),
//                       actions: [
//                         IconButton(icon: Icon(MyAppIcons.delete), onPressed: () {})
//                       ],
//                       backgroundColor:
//                           themeChange.darkTheme ? Colors.black : Colors.white,
//                       elevation: 7.0,
//                     ),
//                     body: ListView.builder(itemCount: lengthOfProductsList,itemBuilder: (BuildContext context,int index){
// //                  return _returnProductCard(context, themeChange);
//                 }),
//                 bottomNavigationBar: BottomAppBar(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         // ignore: deprecated_member_use
//                         child: RaisedButton(
//                           onPressed: () {},
//                           // ignore: deprecated_member_use
//                           child: Text(
//                             'Checkout',
//                             style: TextStyle(
//                                 fontSize: 20.0,
//                                 // ignore: deprecated_member_use
//                                 color: Theme.of(context).textSelectionColor),
//                             textAlign: TextAlign.center,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16.0),
//                             side: BorderSide(color: Colors.red),
//                           ),
//                           color: Colors.redAccent,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Total : ',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 18.0),
//                             ),
//                             Text(
//                               'US \$450.000',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20.0,
//                                   color: Colors.blueAccent),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//   }
// }
// //
// //
// //
// // This Screen is Directly Implemented on the cart.dart screen
// //
// //
// //


