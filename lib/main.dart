import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(restaurantapp());
}

class restaurantapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
