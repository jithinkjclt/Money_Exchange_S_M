import 'package:flutter/material.dart';
import 'package:money_exchange/Screenns/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Money Exchange',
      debugShowCheckedModeBanner: false,
      home: HomeScreens(),
    );
  }
}
