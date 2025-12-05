import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/food_list_page.dart';
import 'pages/food_detail_page.dart';

void main() {
  runApp(FoodRateApp());
}

class FoodRateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodRate',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/list': (context) => FoodListPage(),
        '/detail': (context) => FoodDetailPage(),
      },
    );
  }
}
