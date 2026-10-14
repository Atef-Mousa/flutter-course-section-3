import 'package:flutter/material.dart';
import 'home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title : "ShoppingApp",
     theme : ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
     ),
     debugShowCheckedModeBanner: false,
     home : const HomePage()
   );
  }
}