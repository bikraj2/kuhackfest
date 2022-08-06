
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pixel/screens/get_started_screen.dart';
import 'package:pixel/screens/seller/s_product.dart';
=======
import 'package:pixel/screens/buyer/b_profile.dart';
import 'package:pixel/screens/get_started_screen.dart';
//import 'package:pixel/screens/seller/s_product.dart';
>>>>>>> 695c623e06f6282d1071a82799bb5f290952234a


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


