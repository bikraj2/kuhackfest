import 'package:flutter/material.dart';
import 'package:pixel/screens/get_started_screen.dart';
import 'package:pixel/screens/seller/s_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const GetStartedScreen(),
    );
  }
}
