import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BHomeScreen(),
  ));
}

class BHomeScreen extends StatefulWidget {
  const BHomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BHomeScreenState createState() => _BHomeScreenState();
}

class _BHomeScreenState extends State<BHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Dashboard'),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const IconButton(
              onPressed: null, icon: Icon(Icons.search), color: Colors.white),
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_cart),
              color: Colors.white)
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text('Priyanshu Sharma'),
              accountEmail: Text('psneb420@gmail.com'))
        ],
      )),
    );
  }
}
