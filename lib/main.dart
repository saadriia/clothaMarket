import 'package:clothes_market/screens/Home_Page.dart';
import 'package:clothes_market/screens/UpdateProductScreen.dart';
import 'package:clothes_market/services/updateProduct.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
routes: {
  HomePage.id:(context)=> const HomePage(),
  UpdateProductPage.id:(context)=>UpdateProductPage(),
} ,
initialRoute: HomePage.id,

    );
  }
}